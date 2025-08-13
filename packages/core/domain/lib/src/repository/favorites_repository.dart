import 'package:core_domain/core_domain.dart';

abstract class FavoritesRepository {
  Stream<List<Repository>> watchFavorites();
  Future<void> addFavorite(Repository repository);
  Future<void> removeFavorite(int id);
}