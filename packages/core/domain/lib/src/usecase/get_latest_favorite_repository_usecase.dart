import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class GetLatestFavoriteRepositoryUseCase {
  Future<Result<Repository?>> call();
}

class GetLatestFavoriteRepositoryUseCaseImpl
    implements GetLatestFavoriteRepositoryUseCase {
  GetLatestFavoriteRepositoryUseCaseImpl({
    required FavoritesRepository favoritesRepository,
  }) : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Future<Result<Repository?>> call() {
    return _favoritesRepository.getLatestFavoriteRepository();
  }
}
