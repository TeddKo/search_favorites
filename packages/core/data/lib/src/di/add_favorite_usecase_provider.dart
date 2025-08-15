import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_favorite_usecase_provider.g.dart';

@riverpod
AddFavoriteUseCase addFavoriteUseCase(Ref ref) {
  return AddFavoriteUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}