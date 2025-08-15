// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(addFavoriteUseCase)
const addFavoriteUseCaseProvider = AddFavoriteUseCaseProvider._();

final class AddFavoriteUseCaseProvider
    extends
        $FunctionalProvider<
          AddFavoriteUseCase,
          AddFavoriteUseCase,
          AddFavoriteUseCase
        >
    with $Provider<AddFavoriteUseCase> {
  const AddFavoriteUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addFavoriteUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addFavoriteUseCaseHash();

  @$internal
  @override
  $ProviderElement<AddFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddFavoriteUseCase create(Ref ref) {
    return addFavoriteUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddFavoriteUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddFavoriteUseCase>(value),
    );
  }
}

String _$addFavoriteUseCaseHash() =>
    r'5c775af115d3a02fd825e4390ad5df6fe28da99f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
