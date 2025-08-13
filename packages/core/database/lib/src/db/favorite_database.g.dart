// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_database.dart';

// ignore_for_file: type=lint
mixin _$FavoriteRepositoryDaoMixin on DatabaseAccessor<FavoriteDatabase> {
  $FavoriteRepositoriesTable get favoriteRepositories =>
      attachedDatabase.favoriteRepositories;
}

class $FavoriteRepositoriesTable extends FavoriteRepositories
    with TableInfo<$FavoriteRepositoriesTable, FavoriteRepository> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteRepositoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _repoIdMeta = const VerificationMeta('repoId');
  @override
  late final GeneratedColumn<int> repoId = GeneratedColumn<int>(
    'repo_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stargazersCountMeta = const VerificationMeta(
    'stargazersCount',
  );
  @override
  late final GeneratedColumn<int> stargazersCount = GeneratedColumn<int>(
    'stargazers_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _forksCountMeta = const VerificationMeta(
    'forksCount',
  );
  @override
  late final GeneratedColumn<int> forksCount = GeneratedColumn<int>(
    'forks_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    repoId,
    name,
    description,
    stargazersCount,
    forksCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_repositories';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoriteRepository> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('repo_id')) {
      context.handle(
        _repoIdMeta,
        repoId.isAcceptableOrUnknown(data['repo_id']!, _repoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_repoIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('stargazers_count')) {
      context.handle(
        _stargazersCountMeta,
        stargazersCount.isAcceptableOrUnknown(
          data['stargazers_count']!,
          _stargazersCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_stargazersCountMeta);
    }
    if (data.containsKey('forks_count')) {
      context.handle(
        _forksCountMeta,
        forksCount.isAcceptableOrUnknown(data['forks_count']!, _forksCountMeta),
      );
    } else if (isInserting) {
      context.missing(_forksCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteRepository map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteRepository(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      repoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}repo_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      stargazersCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stargazers_count'],
      )!,
      forksCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}forks_count'],
      )!,
    );
  }

  @override
  $FavoriteRepositoriesTable createAlias(String alias) {
    return $FavoriteRepositoriesTable(attachedDatabase, alias);
  }
}

class FavoriteRepository extends DataClass
    implements Insertable<FavoriteRepository> {
  final int id;
  final int repoId;
  final String name;
  final String? description;
  final int stargazersCount;
  final int forksCount;
  const FavoriteRepository({
    required this.id,
    required this.repoId,
    required this.name,
    this.description,
    required this.stargazersCount,
    required this.forksCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['repo_id'] = Variable<int>(repoId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['stargazers_count'] = Variable<int>(stargazersCount);
    map['forks_count'] = Variable<int>(forksCount);
    return map;
  }

  FavoriteRepositoriesCompanion toCompanion(bool nullToAbsent) {
    return FavoriteRepositoriesCompanion(
      id: Value(id),
      repoId: Value(repoId),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      stargazersCount: Value(stargazersCount),
      forksCount: Value(forksCount),
    );
  }

  factory FavoriteRepository.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteRepository(
      id: serializer.fromJson<int>(json['id']),
      repoId: serializer.fromJson<int>(json['repoId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      stargazersCount: serializer.fromJson<int>(json['stargazersCount']),
      forksCount: serializer.fromJson<int>(json['forksCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'repoId': serializer.toJson<int>(repoId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'stargazersCount': serializer.toJson<int>(stargazersCount),
      'forksCount': serializer.toJson<int>(forksCount),
    };
  }

  FavoriteRepository copyWith({
    int? id,
    int? repoId,
    String? name,
    Value<String?> description = const Value.absent(),
    int? stargazersCount,
    int? forksCount,
  }) => FavoriteRepository(
    id: id ?? this.id,
    repoId: repoId ?? this.repoId,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    stargazersCount: stargazersCount ?? this.stargazersCount,
    forksCount: forksCount ?? this.forksCount,
  );
  FavoriteRepository copyWithCompanion(FavoriteRepositoriesCompanion data) {
    return FavoriteRepository(
      id: data.id.present ? data.id.value : this.id,
      repoId: data.repoId.present ? data.repoId.value : this.repoId,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      stargazersCount: data.stargazersCount.present
          ? data.stargazersCount.value
          : this.stargazersCount,
      forksCount: data.forksCount.present
          ? data.forksCount.value
          : this.forksCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteRepository(')
          ..write('id: $id, ')
          ..write('repoId: $repoId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('stargazersCount: $stargazersCount, ')
          ..write('forksCount: $forksCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, repoId, name, description, stargazersCount, forksCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteRepository &&
          other.id == this.id &&
          other.repoId == this.repoId &&
          other.name == this.name &&
          other.description == this.description &&
          other.stargazersCount == this.stargazersCount &&
          other.forksCount == this.forksCount);
}

class FavoriteRepositoriesCompanion
    extends UpdateCompanion<FavoriteRepository> {
  final Value<int> id;
  final Value<int> repoId;
  final Value<String> name;
  final Value<String?> description;
  final Value<int> stargazersCount;
  final Value<int> forksCount;
  const FavoriteRepositoriesCompanion({
    this.id = const Value.absent(),
    this.repoId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.stargazersCount = const Value.absent(),
    this.forksCount = const Value.absent(),
  });
  FavoriteRepositoriesCompanion.insert({
    this.id = const Value.absent(),
    required int repoId,
    required String name,
    this.description = const Value.absent(),
    required int stargazersCount,
    required int forksCount,
  }) : repoId = Value(repoId),
       name = Value(name),
       stargazersCount = Value(stargazersCount),
       forksCount = Value(forksCount);
  static Insertable<FavoriteRepository> custom({
    Expression<int>? id,
    Expression<int>? repoId,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? stargazersCount,
    Expression<int>? forksCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (repoId != null) 'repo_id': repoId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (stargazersCount != null) 'stargazers_count': stargazersCount,
      if (forksCount != null) 'forks_count': forksCount,
    });
  }

  FavoriteRepositoriesCompanion copyWith({
    Value<int>? id,
    Value<int>? repoId,
    Value<String>? name,
    Value<String?>? description,
    Value<int>? stargazersCount,
    Value<int>? forksCount,
  }) {
    return FavoriteRepositoriesCompanion(
      id: id ?? this.id,
      repoId: repoId ?? this.repoId,
      name: name ?? this.name,
      description: description ?? this.description,
      stargazersCount: stargazersCount ?? this.stargazersCount,
      forksCount: forksCount ?? this.forksCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (repoId.present) {
      map['repo_id'] = Variable<int>(repoId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (stargazersCount.present) {
      map['stargazers_count'] = Variable<int>(stargazersCount.value);
    }
    if (forksCount.present) {
      map['forks_count'] = Variable<int>(forksCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteRepositoriesCompanion(')
          ..write('id: $id, ')
          ..write('repoId: $repoId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('stargazersCount: $stargazersCount, ')
          ..write('forksCount: $forksCount')
          ..write(')'))
        .toString();
  }
}

abstract class _$FavoriteDatabase extends GeneratedDatabase {
  _$FavoriteDatabase(QueryExecutor e) : super(e);
  $FavoriteDatabaseManager get managers => $FavoriteDatabaseManager(this);
  late final $FavoriteRepositoriesTable favoriteRepositories =
      $FavoriteRepositoriesTable(this);
  late final FavoriteRepositoryDao favoriteRepositoryDao =
      FavoriteRepositoryDao(this as FavoriteDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteRepositories];
}

typedef $$FavoriteRepositoriesTableCreateCompanionBuilder =
    FavoriteRepositoriesCompanion Function({
      Value<int> id,
      required int repoId,
      required String name,
      Value<String?> description,
      required int stargazersCount,
      required int forksCount,
    });
typedef $$FavoriteRepositoriesTableUpdateCompanionBuilder =
    FavoriteRepositoriesCompanion Function({
      Value<int> id,
      Value<int> repoId,
      Value<String> name,
      Value<String?> description,
      Value<int> stargazersCount,
      Value<int> forksCount,
    });

class $$FavoriteRepositoriesTableFilterComposer
    extends Composer<_$FavoriteDatabase, $FavoriteRepositoriesTable> {
  $$FavoriteRepositoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get repoId => $composableBuilder(
    column: $table.repoId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stargazersCount => $composableBuilder(
    column: $table.stargazersCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get forksCount => $composableBuilder(
    column: $table.forksCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FavoriteRepositoriesTableOrderingComposer
    extends Composer<_$FavoriteDatabase, $FavoriteRepositoriesTable> {
  $$FavoriteRepositoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get repoId => $composableBuilder(
    column: $table.repoId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stargazersCount => $composableBuilder(
    column: $table.stargazersCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get forksCount => $composableBuilder(
    column: $table.forksCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FavoriteRepositoriesTableAnnotationComposer
    extends Composer<_$FavoriteDatabase, $FavoriteRepositoriesTable> {
  $$FavoriteRepositoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get repoId =>
      $composableBuilder(column: $table.repoId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stargazersCount => $composableBuilder(
    column: $table.stargazersCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get forksCount => $composableBuilder(
    column: $table.forksCount,
    builder: (column) => column,
  );
}

class $$FavoriteRepositoriesTableTableManager
    extends
        RootTableManager<
          _$FavoriteDatabase,
          $FavoriteRepositoriesTable,
          FavoriteRepository,
          $$FavoriteRepositoriesTableFilterComposer,
          $$FavoriteRepositoriesTableOrderingComposer,
          $$FavoriteRepositoriesTableAnnotationComposer,
          $$FavoriteRepositoriesTableCreateCompanionBuilder,
          $$FavoriteRepositoriesTableUpdateCompanionBuilder,
          (
            FavoriteRepository,
            BaseReferences<
              _$FavoriteDatabase,
              $FavoriteRepositoriesTable,
              FavoriteRepository
            >,
          ),
          FavoriteRepository,
          PrefetchHooks Function()
        > {
  $$FavoriteRepositoriesTableTableManager(
    _$FavoriteDatabase db,
    $FavoriteRepositoriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoriteRepositoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoriteRepositoriesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$FavoriteRepositoriesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> repoId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> stargazersCount = const Value.absent(),
                Value<int> forksCount = const Value.absent(),
              }) => FavoriteRepositoriesCompanion(
                id: id,
                repoId: repoId,
                name: name,
                description: description,
                stargazersCount: stargazersCount,
                forksCount: forksCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int repoId,
                required String name,
                Value<String?> description = const Value.absent(),
                required int stargazersCount,
                required int forksCount,
              }) => FavoriteRepositoriesCompanion.insert(
                id: id,
                repoId: repoId,
                name: name,
                description: description,
                stargazersCount: stargazersCount,
                forksCount: forksCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FavoriteRepositoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$FavoriteDatabase,
      $FavoriteRepositoriesTable,
      FavoriteRepository,
      $$FavoriteRepositoriesTableFilterComposer,
      $$FavoriteRepositoriesTableOrderingComposer,
      $$FavoriteRepositoriesTableAnnotationComposer,
      $$FavoriteRepositoriesTableCreateCompanionBuilder,
      $$FavoriteRepositoriesTableUpdateCompanionBuilder,
      (
        FavoriteRepository,
        BaseReferences<
          _$FavoriteDatabase,
          $FavoriteRepositoriesTable,
          FavoriteRepository
        >,
      ),
      FavoriteRepository,
      PrefetchHooks Function()
    >;

class $FavoriteDatabaseManager {
  final _$FavoriteDatabase _db;
  $FavoriteDatabaseManager(this._db);
  $$FavoriteRepositoriesTableTableManager get favoriteRepositories =>
      $$FavoriteRepositoriesTableTableManager(_db, _db.favoriteRepositories);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoriteDatabase)
const favoriteDatabaseProvider = FavoriteDatabaseProvider._();

final class FavoriteDatabaseProvider
    extends
        $FunctionalProvider<
          FavoriteDatabase,
          FavoriteDatabase,
          FavoriteDatabase
        >
    with $Provider<FavoriteDatabase> {
  const FavoriteDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteDatabaseHash();

  @$internal
  @override
  $ProviderElement<FavoriteDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FavoriteDatabase create(Ref ref) {
    return favoriteDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoriteDatabase>(value),
    );
  }
}

String _$favoriteDatabaseHash() => r'80aa43b22f0cec1a6224f3e27f7b23c8b98b9178';

@ProviderFor(favoriteRepositoryDao)
const favoriteRepositoryDaoProvider = FavoriteRepositoryDaoProvider._();

final class FavoriteRepositoryDaoProvider
    extends
        $FunctionalProvider<
          FavoriteRepositoryDao,
          FavoriteRepositoryDao,
          FavoriteRepositoryDao
        >
    with $Provider<FavoriteRepositoryDao> {
  const FavoriteRepositoryDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteRepositoryDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteRepositoryDaoHash();

  @$internal
  @override
  $ProviderElement<FavoriteRepositoryDao> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FavoriteRepositoryDao create(Ref ref) {
    return favoriteRepositoryDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoriteRepositoryDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoriteRepositoryDao>(value),
    );
  }
}

String _$favoriteRepositoryDaoHash() =>
    r'f37c382a4b1703e42769e102e1eb9472959aa542';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
