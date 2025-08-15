import 'package:core_domain/core_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_intent.freezed.dart';

@freezed
sealed class FavoritesIntent with _$FavoritesIntent {
  const factory FavoritesIntent.fetchNextPage() = _FetchNextPage;

  const factory FavoritesIntent.removeFavorite(Repository repository) =
      _RemoveFavorite;

  const factory FavoritesIntent.refresh() = _Refresh;
}
