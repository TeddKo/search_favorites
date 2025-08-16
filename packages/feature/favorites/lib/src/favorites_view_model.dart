import 'dart:async';

import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';
import 'package:shared_util/shared_util.dart';
import 'package:home_widget/home_widget.dart';

import 'di/get_favorites_usecase_provider.dart';
import 'intent/favorites_intent.dart';
import 'state/favorites_state.dart';

part 'favorites_view_model.g.dart';

@riverpod
class FavoritesViewModel extends _$FavoritesViewModel {
  @override
  FavoritesState build() {
    ref.listen(favoritesIdsStreamProvider, (previous, next) {
      if (previous != null) {
        _refresh();
      }
    });

    _fetchFirstPage();

    return const FavoritesState(isLoading: true);
  }

  void onIntent(FavoritesIntent intent) {
    intent.when(
      refresh: _refresh,
      fetchNextPage: _fetchNextPage,
      removeFavorite: _removeFavorite,
    );
  }

  Future<void> _refresh() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);
    await _fetchFirstPage();
  }

  Future<void> _fetchFirstPage() async {
    final getFavoritesUseCase = ref.read(getFavoritesUseCaseProvider);
    final result = await getFavoritesUseCase(0);

    result.when(
      success: (repos) {
        state = state.copyWith(
          isLoading: false,
          repositories: repos.map((e) => e.copyWith(isFavorite: true)).toList(),
          offset: 0,
          hasMore: repos.length == 30,
        );
        _updateWidget();
      },
      error: (e) => state = state.copyWith(isLoading: false, error: e),
    );
  }

  Future<void> _fetchNextPage() async {
    if (state.isFetchingNextPage || !state.hasMore || state.isLoading) return;
    state = state.copyWith(isFetchingNextPage: true);

    final nextOffset = state.offset + 30;
    final getFavoritesUseCase = ref.read(getFavoritesUseCaseProvider);
    final result = await getFavoritesUseCase(nextOffset);

    result.when(
      success: (newRepos) {
        logger.d('nextData is $newRepos');
        state = state.copyWith(
          isFetchingNextPage: false,
          repositories: [
            ...state.repositories,
            ...newRepos.map((e) => e.copyWith(isFavorite: true)),
          ],
          offset: nextOffset,
          hasMore: newRepos.length == 30,
        );
      },
      error: (e) => state = state.copyWith(isFetchingNextPage: false, error: e),
    );
  }

  Future<void> _removeFavorite(Repository repository) async {
    final removeFavoriteUseCase = ref.read(removeFavoriteUseCaseProvider);
    final result = await removeFavoriteUseCase(repository.id);

    result.when(
      success: (_) {
        final currentList = state.repositories;
        currentList.removeWhere((item) => item.id == repository.id);
        state = state.copyWith(repositories: [...currentList]);
        _updateWidget();
      },
      error: (e) => state = state.copyWith(isLoading: false, error: e),
    );
  }

  Future<void> _updateWidget() async {
    final getLatestFavoriteUseCase = ref.read(getLatestFavoriteRepositoryUseCaseProvider);
    final result = await getLatestFavoriteUseCase();
    result.when(success: (repo) async {
      if (repo != null) {
        print("Saving to HomeWidget: name=${repo.name}, description=${repo.description}");
        await HomeWidget.saveWidgetData<String>('name', repo.name);
        await HomeWidget.saveWidgetData<String>('description', repo.description);
      } else {
        print("Saving to HomeWidget: No repository found");
        await HomeWidget.saveWidgetData<String>('name', 'No repository found');
        await HomeWidget.saveWidgetData<String>('description', '');
      }
      await HomeWidget.updateWidget(
        name: 'LatestFavoriteWidgetReceiver',
        androidName: 'LatestFavoriteWidgetReceiver',
      );
    }, error: (e) {
      print("Error getting latest favorite for widget: $e");
    });
  }
}
