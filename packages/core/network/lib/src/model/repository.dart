import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

part 'repository.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({required List<NetworkRepository> items}) =
      _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
abstract class NetworkRepository with _$NetworkRepository {
  const factory NetworkRepository({
    required int id,
    required String name,
    required String? description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
  }) = _NetworkRepository;

  factory NetworkRepository.fromJson(Map<String, dynamic> json) =>
      _$NetworkRepositoryFromJson(json);
}
