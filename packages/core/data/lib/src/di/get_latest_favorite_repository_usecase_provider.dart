import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_latest_favorite_repository_usecase_provider.g.dart';

@riverpod
GetLatestFavoriteRepositoryUseCase getLatestFavoriteRepositoryUseCase(Ref ref) {
  return GetLatestFavoriteRepositoryUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}