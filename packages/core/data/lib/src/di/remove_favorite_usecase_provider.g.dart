// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_favorite_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(removeFavoriteUseCase)
const removeFavoriteUseCaseProvider = RemoveFavoriteUseCaseProvider._();

final class RemoveFavoriteUseCaseProvider
    extends
        $FunctionalProvider<
          RemoveFavoriteUseCase,
          RemoveFavoriteUseCase,
          RemoveFavoriteUseCase
        >
    with $Provider<RemoveFavoriteUseCase> {
  const RemoveFavoriteUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeFavoriteUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeFavoriteUseCaseHash();

  @$internal
  @override
  $ProviderElement<RemoveFavoriteUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoveFavoriteUseCase create(Ref ref) {
    return removeFavoriteUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoveFavoriteUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoveFavoriteUseCase>(value),
    );
  }
}

String _$removeFavoriteUseCaseHash() =>
    r'ba8e533d80a64f8140e4b2c184a94f094fec3e34';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
