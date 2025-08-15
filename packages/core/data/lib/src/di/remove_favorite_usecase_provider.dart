import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remove_favorite_usecase_provider.g.dart';

@riverpod
RemoveFavoriteUseCase removeFavoriteUseCase(Ref ref) {
  return RemoveFavoriteUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
}
