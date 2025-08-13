// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(searchDataSource)
const searchDataSourceProvider = SearchDataSourceProvider._();

final class SearchDataSourceProvider
    extends
        $FunctionalProvider<
          SearchDataSource,
          SearchDataSource,
          SearchDataSource
        >
    with $Provider<SearchDataSource> {
  const SearchDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchDataSourceHash();

  @$internal
  @override
  $ProviderElement<SearchDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SearchDataSource create(Ref ref) {
    return searchDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchDataSource>(value),
    );
  }
}

String _$searchDataSourceHash() => r'52086a427b4455febcba53d5908b02020297acbe';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
