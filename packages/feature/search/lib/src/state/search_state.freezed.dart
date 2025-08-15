// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 bool get isLoading; bool get isFetchingNextPage; Exception? get error; String get query; int get page; List<Repository> get repositories; bool get hasMore; Set<int> get favoriteIds;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingNextPage, isFetchingNextPage) || other.isFetchingNextPage == isFetchingNextPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.repositories, repositories)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other.favoriteIds, favoriteIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingNextPage,error,query,page,const DeepCollectionEquality().hash(repositories),hasMore,const DeepCollectionEquality().hash(favoriteIds));

@override
String toString() {
  return 'SearchState(isLoading: $isLoading, isFetchingNextPage: $isFetchingNextPage, error: $error, query: $query, page: $page, repositories: $repositories, hasMore: $hasMore, favoriteIds: $favoriteIds)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isFetchingNextPage, Exception? error, String query, int page, List<Repository> repositories, bool hasMore, Set<int> favoriteIds
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isFetchingNextPage = null,Object? error = freezed,Object? query = null,Object? page = null,Object? repositories = null,Object? hasMore = null,Object? favoriteIds = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingNextPage: null == isFetchingNextPage ? _self.isFetchingNextPage : isFetchingNextPage // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,repositories: null == repositories ? _self.repositories : repositories // ignore: cast_nullable_to_non_nullable
as List<Repository>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,favoriteIds: null == favoriteIds ? _self.favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingNextPage,  Exception? error,  String query,  int page,  List<Repository> repositories,  bool hasMore,  Set<int> favoriteIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.isLoading,_that.isFetchingNextPage,_that.error,_that.query,_that.page,_that.repositories,_that.hasMore,_that.favoriteIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingNextPage,  Exception? error,  String query,  int page,  List<Repository> repositories,  bool hasMore,  Set<int> favoriteIds)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.isLoading,_that.isFetchingNextPage,_that.error,_that.query,_that.page,_that.repositories,_that.hasMore,_that.favoriteIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isFetchingNextPage,  Exception? error,  String query,  int page,  List<Repository> repositories,  bool hasMore,  Set<int> favoriteIds)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.isLoading,_that.isFetchingNextPage,_that.error,_that.query,_that.page,_that.repositories,_that.hasMore,_that.favoriteIds);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.isLoading = false, this.isFetchingNextPage = false, this.error, this.query = '', this.page = 1, final  List<Repository> repositories = const [], this.hasMore = true, final  Set<int> favoriteIds = const {}}): _repositories = repositories,_favoriteIds = favoriteIds;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFetchingNextPage;
@override final  Exception? error;
@override@JsonKey() final  String query;
@override@JsonKey() final  int page;
 final  List<Repository> _repositories;
@override@JsonKey() List<Repository> get repositories {
  if (_repositories is EqualUnmodifiableListView) return _repositories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repositories);
}

@override@JsonKey() final  bool hasMore;
 final  Set<int> _favoriteIds;
@override@JsonKey() Set<int> get favoriteIds {
  if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favoriteIds);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingNextPage, isFetchingNextPage) || other.isFetchingNextPage == isFetchingNextPage)&&(identical(other.error, error) || other.error == error)&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._repositories, _repositories)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&const DeepCollectionEquality().equals(other._favoriteIds, _favoriteIds));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingNextPage,error,query,page,const DeepCollectionEquality().hash(_repositories),hasMore,const DeepCollectionEquality().hash(_favoriteIds));

@override
String toString() {
  return 'SearchState(isLoading: $isLoading, isFetchingNextPage: $isFetchingNextPage, error: $error, query: $query, page: $page, repositories: $repositories, hasMore: $hasMore, favoriteIds: $favoriteIds)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isFetchingNextPage, Exception? error, String query, int page, List<Repository> repositories, bool hasMore, Set<int> favoriteIds
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isFetchingNextPage = null,Object? error = freezed,Object? query = null,Object? page = null,Object? repositories = null,Object? hasMore = null,Object? favoriteIds = null,}) {
  return _then(_SearchState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingNextPage: null == isFetchingNextPage ? _self.isFetchingNextPage : isFetchingNextPage // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,repositories: null == repositories ? _self._repositories : repositories // ignore: cast_nullable_to_non_nullable
as List<Repository>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,favoriteIds: null == favoriteIds ? _self._favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,
  ));
}


}

// dart format on
