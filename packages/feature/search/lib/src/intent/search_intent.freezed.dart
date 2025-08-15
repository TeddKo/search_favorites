// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchIntent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchIntent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchIntent()';
}


}

/// @nodoc
class $SearchIntentCopyWith<$Res>  {
$SearchIntentCopyWith(SearchIntent _, $Res Function(SearchIntent) __);
}


/// Adds pattern-matching-related methods to [SearchIntent].
extension SearchIntentPatterns on SearchIntent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Search value)?  search,TResult Function( _FetchNextPage value)?  fetchNextPage,TResult Function( _ToggleFavorite value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _FetchNextPage() when fetchNextPage != null:
return fetchNextPage(_that);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Search value)  search,required TResult Function( _FetchNextPage value)  fetchNextPage,required TResult Function( _ToggleFavorite value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case _Search():
return search(_that);case _FetchNextPage():
return fetchNextPage(_that);case _ToggleFavorite():
return toggleFavorite(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Search value)?  search,TResult? Function( _FetchNextPage value)?  fetchNextPage,TResult? Function( _ToggleFavorite value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _FetchNextPage() when fetchNextPage != null:
return fetchNextPage(_that);case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  search,TResult Function()?  fetchNextPage,TResult Function( Repository repository)?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query);case _FetchNextPage() when fetchNextPage != null:
return fetchNextPage();case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.repository);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  search,required TResult Function()  fetchNextPage,required TResult Function( Repository repository)  toggleFavorite,}) {final _that = this;
switch (_that) {
case _Search():
return search(_that.query);case _FetchNextPage():
return fetchNextPage();case _ToggleFavorite():
return toggleFavorite(_that.repository);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  search,TResult? Function()?  fetchNextPage,TResult? Function( Repository repository)?  toggleFavorite,}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query);case _FetchNextPage() when fetchNextPage != null:
return fetchNextPage();case _ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.repository);case _:
  return null;

}
}

}

/// @nodoc


class _Search implements SearchIntent {
  const _Search(this.query);
  

 final  String query;

/// Create a copy of SearchIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchIntent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $SearchIntentCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of SearchIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_Search(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FetchNextPage implements SearchIntent {
  const _FetchNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchIntent.fetchNextPage()';
}


}




/// @nodoc


class _ToggleFavorite implements SearchIntent {
  const _ToggleFavorite(this.repository);
  

 final  Repository repository;

/// Create a copy of SearchIntent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith => __$ToggleFavoriteCopyWithImpl<_ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavorite&&(identical(other.repository, repository) || other.repository == repository));
}


@override
int get hashCode => Object.hash(runtimeType,repository);

@override
String toString() {
  return 'SearchIntent.toggleFavorite(repository: $repository)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteCopyWith<$Res> implements $SearchIntentCopyWith<$Res> {
  factory _$ToggleFavoriteCopyWith(_ToggleFavorite value, $Res Function(_ToggleFavorite) _then) = __$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 Repository repository
});


$RepositoryCopyWith<$Res> get repository;

}
/// @nodoc
class __$ToggleFavoriteCopyWithImpl<$Res>
    implements _$ToggleFavoriteCopyWith<$Res> {
  __$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final _ToggleFavorite _self;
  final $Res Function(_ToggleFavorite) _then;

/// Create a copy of SearchIntent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? repository = null,}) {
  return _then(_ToggleFavorite(
null == repository ? _self.repository : repository // ignore: cast_nullable_to_non_nullable
as Repository,
  ));
}

/// Create a copy of SearchIntent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RepositoryCopyWith<$Res> get repository {
  
  return $RepositoryCopyWith<$Res>(_self.repository, (value) {
    return _then(_self.copyWith(repository: value));
  });
}
}

// dart format on
