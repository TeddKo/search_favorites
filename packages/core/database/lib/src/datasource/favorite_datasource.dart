import 'package:core_database/src/db/favorite_database.dart';

abstract class FavoritesDataSource {
  Stream<List<FavoriteRepository>> watchFavorites();

  Future<void> addFavorite(FavoriteRepositoriesCompanion repository);

  Future<void> removeFavorite(int id);
}
