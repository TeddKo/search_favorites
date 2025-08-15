import 'package:core_database/core_database.dart' as db;
import 'package:core_domain/core_domain.dart';
import 'package:core_network/core_network.dart';
import 'package:drift/drift.dart';

extension ToData on NetworkRepository {
  Repository toData() {
    return Repository(
      id: id,
      name: name,
      description: description,
      stargazersCount: stargazersCount,
      forksCount: forksCount,
    );
  }
}

extension ToDatabase on db.FavoriteRepository {
  Repository toDomainModel() {
    return Repository(
      id: repoId,
      name: name,
      description: description,
      stargazersCount: stargazersCount,
      forksCount: forksCount,
    );
  }
}

extension ToDatabaseCompanion on Repository {
  db.FavoriteRepositoriesCompanion toDbModel() {
    return db.FavoriteRepositoriesCompanion(
      repoId: Value(id),
      name: Value(name),
      description: Value(description),
      stargazersCount: Value(stargazersCount),
      forksCount: Value(forksCount),
    );
  }
}
