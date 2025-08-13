import 'package:core_data/src/datasource/favorite_datasource.dart';
import 'package:core_data/src/mapper/repository_mapper.dart';
import 'package:core_database/core_database.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_repository.g.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesDataSource _dataSource;

  FavoritesRepositoryImpl(this._dataSource);

  @override
  Stream<List<Repository>> watchFavorites() {
    return _dataSource.watchFavorites().map(
      (dbList) => dbList.map((dbItem) => dbItem.toDomainModel()).toList(),
    );
  }

  @override
  Future<void> addFavorite(Repository repository) {
    return _dataSource.addFavorite(repository.toDbModel());
  }

  @override
  Future<void> removeFavorite(int id) {
    return _dataSource.removeFavorite(id);
  }
}

@riverpod
FavoritesRepository favoritesRepository(Ref ref) {
  return FavoritesRepositoryImpl(ref.watch(favoritesDataSourceProvider));
}
