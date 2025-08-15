import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class WatchFavoritesIdsUseCase {
  Stream<Result<List<int>>> call();
}

class WatchFavoritesIdsUseCaseImpl implements WatchFavoritesIdsUseCase {
  WatchFavoritesIdsUseCaseImpl({
    required FavoritesRepository favoritesRepository,
  }) : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Stream<Result<List<int>>> call() {
    return _favoritesRepository.watchFavoritesIds();
  }
}
