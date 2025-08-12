// lib/model/repository.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

// API의 최상위 응답 구조
@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    // API 응답의 'items' 키에 리포지토리 리스트가 담겨 옴
    required List<RepositoryItem> items,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

// 개별 리포지토리 아이템 구조
@freezed
class RepositoryItem with _$RepositoryItem {
  const factory RepositoryItem({
    required int id,
    required String name,
    // JSON key(snake_case)를 Dart의 camelCase 필드에 매핑
    @JsonKey(name: 'full_name') required String fullName,
    required Owner owner,
    required String? description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
  }) = _RepositoryItem;

  factory RepositoryItem.fromJson(Map<String, dynamic> json) =>
      _$RepositoryItemFromJson(json);
}

// 리포지토리 소유자 정보 구조
@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}