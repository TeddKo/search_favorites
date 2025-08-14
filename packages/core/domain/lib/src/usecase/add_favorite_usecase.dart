import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class AddFavoriteUseCase {
  Future<Result<void>> call(Repository repository);
}

class AddFavoriteUseCaseImpl implements AddFavoriteUseCase {
  AddFavoriteUseCaseImpl({required FavoritesRepository favoritesRepository})
    : _favoritesRepository = favoritesRepository;

  final FavoritesRepository _favoritesRepository;

  @override
  Future<Result<void>> call(Repository repository) {
    return _favoritesRepository.addFavorite(repository);
  }
}
