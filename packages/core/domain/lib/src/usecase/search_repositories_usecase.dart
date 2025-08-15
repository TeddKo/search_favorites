import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class SearchRepositoriesUseCase {
  Future<Result<List<Repository>>> call(String query, int page);
}

class SearchRepositoriesUseCaseImpl implements SearchRepositoriesUseCase {
  final SearchRepository _searchRepository;

  SearchRepositoriesUseCaseImpl(this._searchRepository);

  @override
  Future<Result<List<Repository>>> call(String query, int page) {
    return _searchRepository.searchRepositories(query, page);
  }
}
