import 'package:core_database/core_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_datasource.g.dart';

class FavoritesDataSourceImpl implements FavoritesDataSource {
  final FavoriteRepositoryDao _dao;

  FavoritesDataSourceImpl(this._dao);

  @override
  Future<List<FavoriteRepository>> getFavorites(int offset) =>
      _dao.getFavoriteRepositories(offset);

  @override
  Stream<List<int>> watchFavoritesIds() => _dao.watchFavoriteRepoIds();

  @override
  Future<void> addFavorite(FavoriteRepositoriesCompanion repository) =>
      _dao.addFavoriteRepository(repository);

  @override
  Future<void> removeFavorite(int id) => _dao.removeFavoriteRepository(id);
}

@riverpod
FavoritesDataSource favoritesDataSource(Ref ref) {
  return FavoritesDataSourceImpl(ref.watch(favoriteRepositoryDaoProvider));
}
