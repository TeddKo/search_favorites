import 'package:core_domain/core_domain.dart';
import 'package:shared_common/shared_common.dart';

abstract class FavoritesRepository {
  Stream<Result<List<Repository>>> watchFavorites();
  Future<Result<void>> addFavorite(Repository repository);
  Future<Result<void>> removeFavorite(int id);
}