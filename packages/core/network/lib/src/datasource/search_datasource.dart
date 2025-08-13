import 'package:core_network/src/model/repository.dart';

abstract class SearchDataSource {
  Future<SearchResponse> searchRepositories(String query);
}