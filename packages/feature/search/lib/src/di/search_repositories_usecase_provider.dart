import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRepositoriesUseCaseProvider = Provider<SearchRepositoriesUseCase>((
  ref,
) {
  return SearchRepositoriesUseCaseImpl(ref.watch(searchRepositoryProvider));
});
