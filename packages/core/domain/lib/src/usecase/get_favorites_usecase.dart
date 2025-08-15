import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class GetFavoritesUseCase {
  Future<Result<List<Repository>>> call(int offset);
}

class GetFavoritesUseCaseImpl implements GetFavoritesUseCase {
  GetFavoritesUseCaseImpl({required FavoritesRepository favoritesRepository})
    : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Future<Result<List<Repository>>> call(int offset) {
    return _favoritesRepository.getFavorites(offset);
  }
}
