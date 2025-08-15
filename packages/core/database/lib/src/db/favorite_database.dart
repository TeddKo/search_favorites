import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_database.g.dart';

@DataClassName('FavoriteRepository')
class FavoriteRepositories extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get repoId => integer().unique()();

  TextColumn get name => text()();

  TextColumn get description => text().nullable()();

  IntColumn get stargazersCount => integer()();

  IntColumn get forksCount => integer()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

// 2. DAO (Data Access Object) 정의
@DriftAccessor(tables: [FavoriteRepositories])
class FavoriteRepositoryDao extends DatabaseAccessor<FavoriteDatabase>
    with _$FavoriteRepositoryDaoMixin {
  FavoriteRepositoryDao(super.db);

  Future<List<FavoriteRepository>> getFavoriteRepositories(int offset) =>
      (select(favoriteRepositories)..limit(30, offset: offset)).get();

  Stream<List<int>> watchFavoriteRepoIds() {
    final query = selectOnly(favoriteRepositories)
      ..addColumns([favoriteRepositories.repoId]);
    return query.map((row) => row.read(favoriteRepositories.repoId)!).watch();
  }

  Future<void> addFavoriteRepository(FavoriteRepositoriesCompanion entry) =>
      into(favoriteRepositories).insert(entry, mode: InsertMode.insertOrIgnore);

  Future<void> removeFavoriteRepository(int repoId) => (delete(
    favoriteRepositories,
  )..where((tbl) => tbl.repoId.equals(repoId))).go();

  Future<FavoriteRepository?> getLatestFavoriteRepository() {
    return (select(favoriteRepositories)
      ..orderBy([
            (tbl) =>
            OrderingTerm(expression: tbl.createdAt, mode: OrderingMode.desc)
      ]))
        .getSingleOrNull();
  }
}

@DriftDatabase(tables: [FavoriteRepositories], daos: [FavoriteRepositoryDao])
class FavoriteDatabase extends _$FavoriteDatabase {
  FavoriteDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.addColumn(favoriteRepositories, favoriteRepositories.createdAt);
        }
      },
    );
  }

}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@Riverpod(keepAlive: true)
FavoriteDatabase favoriteDatabase(Ref ref) {
  return FavoriteDatabase();
}

@riverpod
FavoriteRepositoryDao favoriteRepositoryDao(Ref ref) {
  return ref.watch(favoriteDatabaseProvider).favoriteRepositoryDao;
}
