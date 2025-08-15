import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class RemoveFavoriteUseCase {
  Future<Result<void>> call(int id);
}

class RemoveFavoriteUseCaseImpl implements RemoveFavoriteUseCase {
  RemoveFavoriteUseCaseImpl({required FavoritesRepository favoritesRepository})
    : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Future<Result<void>> call(int id) {
    return _favoritesRepository.removeFavorite(id);
  }
}
