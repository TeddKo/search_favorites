import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/shared_ui.dart';

import 'favorites_view_model.dart';
import 'intent/favorites_intent.dart';

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      ref
          .read(favoritesViewModelProvider.notifier)
          .onIntent(const FavoritesIntent.fetchNextPage());
    }
  }

  Future<void> _onRefresh() async {
    ref
        .read(favoritesViewModelProvider.notifier)
        .onIntent(const FavoritesIntent.refresh());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoritesViewModelProvider);
    final viewModel = ref.read(favoritesViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: (state.isLoading && state.repositories.isEmpty)
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                controller: _scrollController,
                itemCount:
                    state.repositories.length +
                    (state.isFetchingNextPage ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == state.repositories.length) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  final repository = state.repositories[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: RepositoryCard(
                      name: repository.name,
                      description: repository.description,
                      stargazersCount: repository.stargazersCount,
                      forksCount: repository.forksCount,
                      isFavorite: repository.isFavorite,
                      onFavoritePressed: () {
                        viewModel.onIntent(
                          FavoritesIntent.removeFavorite(repository),
                        );
                      },
                    ),
                  );
                },
              ),
      ),
    );
  }
}
