import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/shared_ui.dart';

import 'intent/search_intent.dart';
import 'search_view_model.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      ref
          .read(searchViewModelProvider.notifier)
          .onIntent(SearchIntent.search(query));
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      ref
          .read(searchViewModelProvider.notifier)
          .onIntent(const SearchIntent.fetchNextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchViewModelProvider);
    final notifier = ref.read(searchViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _textController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: '저장소 검색...',
            border: InputBorder.none,
          ),
          onChanged: _onSearchChanged,
        ),
      ),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
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
                        notifier.onIntent(
                          SearchIntent.toggleFavorite(repository),
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
