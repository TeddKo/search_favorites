import 'dart:async';

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
  Future<Result<List<Repository>>> getFavorites(int offset) async {
    try {
      final dbList = await _dataSource.getFavorites(offset);
      final domainList = dbList
          .map((dbItem) => dbItem.toDomainModel())
          .toList();
      return Result.success(domainList);
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }

  @override
  Future<Result<Repository?>> getLatestFavoriteRepository() async {
    try {
      final latestRepository = await _dataSource.getLatestFavoriteRepository();
      final result = latestRepository?.toDomainModel();
      return Result.success(result);
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }

  @override
  Stream<Result<List<int>>> watchFavoritesIds() {
    try {
      return _dataSource.watchFavoritesIds().transform(
        StreamTransformer<List<int>, Result<List<int>>>.fromHandlers(
          handleData: (repoIds, sink) {
            sink.add(Result.success(repoIds));
          },
          handleError: (error, stackTrace, sink) {
            sink.add(Result.error(Exception(error.toString())));
          },
        ),
      );
    } catch (e) {
      return Stream.value(Result.error(Exception(e.toString())));
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
