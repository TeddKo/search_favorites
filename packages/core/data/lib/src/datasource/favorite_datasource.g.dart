// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoritesDataSource)
const favoritesDataSourceProvider = FavoritesDataSourceProvider._();

final class FavoritesDataSourceProvider
    extends
        $FunctionalProvider<
          FavoritesDataSource,
          FavoritesDataSource,
          FavoritesDataSource
        >
    with $Provider<FavoritesDataSource> {
  const FavoritesDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesDataSourceHash();

  @$internal
  @override
  $ProviderElement<FavoritesDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FavoritesDataSource create(Ref ref) {
    return favoritesDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoritesDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoritesDataSource>(value),
    );
  }
}

String _$favoritesDataSourceHash() =>
    r'1a646ea6296f6ce08441498920d150a98166b57f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
