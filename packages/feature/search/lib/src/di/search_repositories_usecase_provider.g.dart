// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(searchRepositoriesUseCase)
const searchRepositoriesUseCaseProvider = SearchRepositoriesUseCaseProvider._();

final class SearchRepositoriesUseCaseProvider
    extends
        $FunctionalProvider<
          SearchRepositoriesUseCase,
          SearchRepositoriesUseCase,
          SearchRepositoriesUseCase
        >
    with $Provider<SearchRepositoriesUseCase> {
  const SearchRepositoriesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchRepositoriesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchRepositoriesUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchRepositoriesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SearchRepositoriesUseCase create(Ref ref) {
    return searchRepositoriesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchRepositoriesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchRepositoriesUseCase>(value),
    );
  }
}

String _$searchRepositoriesUseCaseHash() =>
    r'97e2583bb05ec4276e9e879cd2b5816ad6990c4c';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
