// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_favorites_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(watchFavoritesUseCase)
const watchFavoritesUseCaseProvider = WatchFavoritesUseCaseProvider._();

final class WatchFavoritesUseCaseProvider
    extends
        $FunctionalProvider<
          WatchFavoritesUseCase,
          WatchFavoritesUseCase,
          WatchFavoritesUseCase
        >
    with $Provider<WatchFavoritesUseCase> {
  const WatchFavoritesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchFavoritesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchFavoritesUseCaseHash();

  @$internal
  @override
  $ProviderElement<WatchFavoritesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WatchFavoritesUseCase create(Ref ref) {
    return watchFavoritesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchFavoritesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchFavoritesUseCase>(value),
    );
  }
}

String _$watchFavoritesUseCaseHash() =>
    r'06d509f6a93bb16d85dfa8bd4bedb85e05c6c4b5';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
