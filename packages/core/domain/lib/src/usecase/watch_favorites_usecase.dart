import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class WatchFavoritesUseCase {
  Stream<Result<List<Repository>>> call();
}

class WatchFavoritesUseCaseImpl implements WatchFavoritesUseCase {
  WatchFavoritesUseCaseImpl({required FavoritesRepository favoritesRepository})
    : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Stream<Result<List<Repository>>> call() {
    return _favoritesRepository.watchFavorites();
  }
}
