import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod/riverpod.dart';

final addFavoriteUseCaseProvider = Provider<AddFavoriteUseCase>((ref) {
  return AddFavoriteUseCaseImpl(
    favoritesRepository: ref.watch(favoritesRepositoryProvider),
  );
});
