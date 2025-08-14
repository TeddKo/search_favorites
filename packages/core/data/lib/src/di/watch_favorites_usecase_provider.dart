import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod/riverpod.dart';

final watchFavoritesUseCaseProvider = Provider<WatchFavoritesUseCase>((ref) {
  return WatchFavoritesUseCaseImpl(
      favoritesRepository: ref.watch(favoritesRepositoryProvider));
});