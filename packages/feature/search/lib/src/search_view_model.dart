import 'dart:async';

import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';

import 'di/search_repositories_usecase_provider.dart';
import 'intent/search_intent.dart';
import 'state/search_state.dart';

part 'search_view_model.g.dart';

@riverpod
class SearchViewModel extends _$SearchViewModel {
  @override
  SearchState build() {
    ref.listen(favoritesIdsStreamProvider, (previous, next) {
      final favoritesIds = (next.value ?? []).map((repoIds) => repoIds).toSet();

      final updatedRepositories = state.repositories.map((repo) {
        return repo.copyWith(isFavorite: favoritesIds.contains(repo.id));
      }).toList();

      state = state.copyWith(
        repositories: updatedRepositories,
        favoriteIds: favoritesIds,
      );
    }, fireImmediately: true);

    return const SearchState();
  }

  void onIntent(SearchIntent intent) {
    intent.when(
      search: _search,
      fetchNextPage: _fetchNextPage,
      toggleFavorite: _toggleFavorite,
    );
  }

  Future<void> _search(String query) async {
    if (query.isEmpty) {
      state = SearchState(favoriteIds: state.favoriteIds);
      return;
    }
    state = state.copyWith(isLoading: true, query: query, page: 1, error: null);

    final searchRepositoriesUseCase = ref.read(
      searchRepositoriesUseCaseProvider,
    );
    final result = await searchRepositoriesUseCase(query, 1);

    result.when(
      success: (repos) {
        final updatedList = repos.map((repo) {
          return repo.copyWith(isFavorite: state.favoriteIds.contains(repo.id));
        }).toList();
        state = state.copyWith(
          isLoading: false,
          repositories: updatedList,
          hasMore: repos.isNotEmpty,
        );
      },
      error: (e) => state = state.copyWith(isLoading: false, error: e),
    );
  }

  Future<void> _fetchNextPage() async {
    if (state.isFetchingNextPage || !state.hasMore) return;
    state = state.copyWith(isFetchingNextPage: true, error: null);

    final nextPage = state.page + 1;
    final searchRepositoriesUseCase = ref.read(
      searchRepositoriesUseCaseProvider,
    );
    final result = await searchRepositoriesUseCase(state.query, nextPage);

    result.when(
      success: (newRepos) {
        final updatedList = newRepos.map((repo) {
          return repo.copyWith(isFavorite: state.favoriteIds.contains(repo.id));
        }).toList();
        state = state.copyWith(
          isFetchingNextPage: false,
          repositories: [...state.repositories, ...updatedList],
          page: nextPage,
          hasMore: newRepos.isNotEmpty,
        );
      },
      error: (e) => state = state.copyWith(isFetchingNextPage: false, error: e),
    );
  }

  Future<void> _toggleFavorite(Repository repository) async {
    final addFavoriteUseCase = ref.read(addFavoriteUseCaseProvider);
    final removeFavoriteUseCase = ref.read(removeFavoriteUseCaseProvider);

    if (state.favoriteIds.contains(repository.id)) {
      await removeFavoriteUseCase(repository.id);
    } else {
      await addFavoriteUseCase(repository);
    }
  }
}
