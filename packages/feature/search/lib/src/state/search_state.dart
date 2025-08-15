import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core_domain/core_domain.dart';

part 'search_state.freezed.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingNextPage,
    Exception? error,
    @Default('') String query,
    @Default(1) int page,
    @Default([]) List<Repository> repositories,
    @Default(true) bool hasMore,
    @Default({}) Set<int> favoriteIds,
  }) = _SearchState;
}