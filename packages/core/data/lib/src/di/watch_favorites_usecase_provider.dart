import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'watch_favorites_usecase_provider.g.dart';

@riverpod
WatchFavoritesUseCase watchFavoritesUseCase(Ref ref) {
  return WatchFavoritesUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}