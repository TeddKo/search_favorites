import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class FavoritesRepository {
  Future<Result<List<Repository>>> getFavorites(int offset);
  Stream<Result<List<int>>> watchFavoritesIds();
  Future<Result<void>> addFavorite(Repository repository);
  Future<Result<void>> removeFavorite(int id);
  Future<Result<Repository?>> getLatestFavoriteRepository();
}