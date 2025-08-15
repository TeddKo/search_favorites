import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_repositories_usecase_provider.g.dart';

@riverpod
SearchRepositoriesUseCase searchRepositoriesUseCase(Ref ref) {
  return SearchRepositoriesUseCaseImpl(ref.watch(searchRepositoryProvider));
}
