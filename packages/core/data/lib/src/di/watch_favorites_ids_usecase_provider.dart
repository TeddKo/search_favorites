import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'watch_favorites_ids_usecase_provider.g.dart';

@riverpod
WatchFavoritesIdsUseCase watchFavoritesIdsUseCase(Ref ref) {
  return WatchFavoritesIdsUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}
