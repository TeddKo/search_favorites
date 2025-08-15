import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_favorites_usecase_provider.g.dart';

@riverpod
GetFavoritesUseCase getFavoritesUseCase(Ref ref) {
  return GetFavoritesUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}