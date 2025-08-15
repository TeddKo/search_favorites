import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core_domain/core_domain.dart';

part 'favorites_state.freezed.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingNextPage,
    Exception? error,
    @Default(0) int offset,
    @Default([]) List<Repository> repositories,
    @Default(true) bool hasMore,
  }) = _FavoritesState;
}