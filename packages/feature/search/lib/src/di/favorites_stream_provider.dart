import 'package:core_data/core_data.dart';
import 'package:core_domain/core_domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_common/shared_common.dart';

final favoritesStreamProvider = StreamProvider<List<Repository>>((ref) {
  final useCase = ref.watch(watchFavoritesUseCaseProvider);
  return useCase().map(
    (result) => result.when(success: (data) => data, error: (_) => []),
  );
});
