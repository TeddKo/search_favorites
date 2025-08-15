// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_stream_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoritesStream)
const favoritesStreamProvider = FavoritesStreamProvider._();

final class FavoritesStreamProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Repository>>,
          List<Repository>,
          Stream<List<Repository>>
        >
    with $FutureModifier<List<Repository>>, $StreamProvider<List<Repository>> {
  const FavoritesStreamProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesStreamProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<Repository>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Repository>> create(Ref ref) {
    return favoritesStream(ref);
  }
}

String _$favoritesStreamHash() => r'79b217eac990538ea8c524c33307d50d606bd91b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
