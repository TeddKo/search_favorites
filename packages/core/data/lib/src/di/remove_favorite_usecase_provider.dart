import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod/riverpod.dart';

final removeFavoriteUseCaseProvider = Provider<RemoveFavoriteUseCase>((ref) {
  return RemoveFavoriteUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
});
