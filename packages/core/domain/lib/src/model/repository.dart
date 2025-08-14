import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

@freezed
sealed class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String name,
    required String? description,
    required int stargazersCount,
    required int forksCount,
    @Default(false) bool isFavorite,
  }) = _Repository;
}