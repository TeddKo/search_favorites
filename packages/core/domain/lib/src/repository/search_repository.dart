
import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class SearchRepository {
  Future<Result<List<Repository>>> searchRepositories(String query, int page);
}