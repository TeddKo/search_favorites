import 'package:core_database/src/db/favorite_database.dart';

abstract class FavoritesDataSource {
  Future<List<FavoriteRepository>> getFavorites(int offset);

  Stream<List<int>> watchFavoritesIds();

  Future<void> addFavorite(FavoriteRepositoriesCompanion repository);

  Future<void> removeFavorite(int id);

  Future<FavoriteRepository?> getLatestFavoriteRepository();
}
