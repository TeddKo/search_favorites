import 'package:core_network/core_network.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_datasource.g.dart';

class SearchDataSourceImpl implements SearchDataSource {
  final Dio _dio;

  SearchDataSourceImpl(this._dio);

  @override
  Future<SearchResponse> searchRepositories(String query) async {
    final response = await _dio.get(
      '/search/repositories',
      queryParameters: {'q': query},
    );
    final searchResponse = SearchResponse.fromJson(response.data);
    return searchResponse;
  }
}

@riverpod
SearchDataSource searchDataSource(Ref ref) {
  return SearchDataSourceImpl(ref.watch(dioProvider));
}
