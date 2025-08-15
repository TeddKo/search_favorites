import 'package:core_data/src/datasource/favorite_datasource.dart';
import 'package:core_data/src/mapper/repository_mapper.dart';
import 'package:core_database/core_database.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';

part 'favorites_repository.g.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesDataSource _dataSource;

  FavoritesRepositoryImpl(this._dataSource);

  @override
  Stream<Result<List<Repository>>> watchFavorites() {
    try {
      return _dataSource
          .watchFavorites()
          .map(
            (dbList) => Result.success(
              dbList.map((dbItem) => dbItem.toDomainModel()).toList(),
            ),
          )
          .handleError((error) => Result.error(Exception(error)));
    } catch (e) {
      return Stream.value(Result.error(Exception(e)));
    }
  }

  @override
  Future<Result<void>> addFavorite(Repository repository) async {
    try {
      await _dataSource.addFavorite(repository.toDbModel());
      return const Result.success(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> removeFavorite(int id) async {
    try {
      await _dataSource.removeFavorite(id);
      return const Result.success(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}

@riverpod
FavoritesRepository favoritesRepository(Ref ref) {
  return FavoritesRepositoryImpl(ref.watch(favoritesDataSourceProvider));
}
