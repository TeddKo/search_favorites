import 'package:core_data/src/mapper/repository_mapper.dart';
import 'package:core_domain/core_domain.dart';
import 'package:core_network/core_network.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';

import '../datasource/search_datasource.dart';

part 'search_repository.g.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource _searchDataSource;

  SearchRepositoryImpl(this._searchDataSource);

  @override
  Future<Result<List<Repository>>> searchRepositories(String query) async {
    try {
      final response = await _searchDataSource.searchRepositories(query);
      final repositories = response.items.map((e) => e.toData()).toList();
      return Result.success(repositories);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}

@riverpod
SearchRepository searchRepository(Ref ref) {
  return SearchRepositoryImpl(ref.watch(searchDataSourceProvider));
}
