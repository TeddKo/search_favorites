import 'package:core_data/core_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_common/shared_common.dart';

part 'favorites_ids_stream_provider.g.dart';

@riverpod
Stream<List<int>> favoritesIdsStream(Ref ref) {
  final useCase = ref.watch(watchFavoritesIdsUseCaseProvider);
  return useCase().map(
        (result) => result.when(success: (data) => data, error: (_) => []),
  );
}
