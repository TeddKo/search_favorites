import 'package:core_domain/core_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_intent.freezed.dart';

@freezed
sealed class SearchIntent with _$SearchIntent {
  const factory SearchIntent.search(String query) = _Search;

  const factory SearchIntent.fetchNextPage() = _FetchNextPage;

  const factory SearchIntent.toggleFavorite(Repository repository) = _ToggleFavorite;
}
