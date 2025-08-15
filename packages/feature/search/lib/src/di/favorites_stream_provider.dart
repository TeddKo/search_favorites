import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';

part 'favorites_stream_provider.g.dart';

@riverpod
Stream<List<Repository>> favoritesStream(Ref ref) {
  final useCase = ref.watch(watchFavoritesUseCaseProvider);
  return useCase().map(
    (result) => result.when(success: (data) => data, error: (_) => []),
  );
}
