// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResponse {
// API 응답의 'items' 키에 리포지토리 리스트가 담겨 옴
  List<RepositoryItem> get items;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      _$SearchResponseCopyWithImpl<SearchResponse>(
          this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchResponse &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'SearchResponse(items: $items)';
  }
}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) _then) =
      _$SearchResponseCopyWithImpl;
  @useResult
  $Res call({List<RepositoryItem> items});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryItem>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchResponse].
extension SearchResponsePatterns on SearchResponse {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<RepositoryItem> items)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
        return $default(_that.items);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<RepositoryItem> items) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse():
        return $default(_that.items);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<RepositoryItem> items)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchResponse() when $default != null:
        return $default(_that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchResponse implements SearchResponse {
  const _SearchResponse({required final List<RepositoryItem> items})
      : _items = items;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

// API 응답의 'items' 키에 리포지토리 리스트가 담겨 옴
  final List<RepositoryItem> _items;
// API 응답의 'items' 키에 리포지토리 리스트가 담겨 옴
  @override
  List<RepositoryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResponse &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'SearchResponse(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(
          _SearchResponse value, $Res Function(_SearchResponse) _then) =
      __$SearchResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<RepositoryItem> items});
}

/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

  /// Create a copy of SearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_SearchResponse(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryItem>,
    ));
  }
}

/// @nodoc
mixin _$RepositoryItem {
  int get id;
  String get name; // JSON key(snake_case)를 Dart의 camelCase 필드에 매핑
  @JsonKey(name: 'full_name')
  String get fullName;
  Owner get owner;
  String? get description;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RepositoryItemCopyWith<RepositoryItem> get copyWith =>
      _$RepositoryItemCopyWithImpl<RepositoryItem>(
          this as RepositoryItem, _$identity);

  /// Serializes this RepositoryItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepositoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, fullName, owner, description, stargazersCount);

  @override
  String toString() {
    return 'RepositoryItem(id: $id, name: $name, fullName: $fullName, owner: $owner, description: $description, stargazersCount: $stargazersCount)';
  }
}

/// @nodoc
abstract mixin class $RepositoryItemCopyWith<$Res> {
  factory $RepositoryItemCopyWith(
          RepositoryItem value, $Res Function(RepositoryItem) _then) =
      _$RepositoryItemCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryItemCopyWithImpl<$Res>
    implements $RepositoryItemCopyWith<$Res> {
  _$RepositoryItemCopyWithImpl(this._self, this._then);

  final RepositoryItem _self;
  final $Res Function(RepositoryItem) _then;

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? description = freezed,
    Object? stargazersCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _self.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_self.owner, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RepositoryItem].
extension RepositoryItemPatterns on RepositoryItem {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RepositoryItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RepositoryItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RepositoryItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'full_name') String fullName,
            Owner owner,
            String? description,
            @JsonKey(name: 'stargazers_count') int stargazersCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem() when $default != null:
        return $default(_that.id, _that.name, _that.fullName, _that.owner,
            _that.description, _that.stargazersCount);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            @JsonKey(name: 'full_name') String fullName,
            Owner owner,
            String? description,
            @JsonKey(name: 'stargazers_count') int stargazersCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem():
        return $default(_that.id, _that.name, _that.fullName, _that.owner,
            _that.description, _that.stargazersCount);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String name,
            @JsonKey(name: 'full_name') String fullName,
            Owner owner,
            String? description,
            @JsonKey(name: 'stargazers_count') int stargazersCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RepositoryItem() when $default != null:
        return $default(_that.id, _that.name, _that.fullName, _that.owner,
            _that.description, _that.stargazersCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RepositoryItem implements RepositoryItem {
  const _RepositoryItem(
      {required this.id,
      required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.owner,
      required this.description,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount});
  factory _RepositoryItem.fromJson(Map<String, dynamic> json) =>
      _$RepositoryItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
// JSON key(snake_case)를 Dart의 camelCase 필드에 매핑
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final Owner owner;
  @override
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RepositoryItemCopyWith<_RepositoryItem> get copyWith =>
      __$RepositoryItemCopyWithImpl<_RepositoryItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RepositoryItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, fullName, owner, description, stargazersCount);

  @override
  String toString() {
    return 'RepositoryItem(id: $id, name: $name, fullName: $fullName, owner: $owner, description: $description, stargazersCount: $stargazersCount)';
  }
}

/// @nodoc
abstract mixin class _$RepositoryItemCopyWith<$Res>
    implements $RepositoryItemCopyWith<$Res> {
  factory _$RepositoryItemCopyWith(
          _RepositoryItem value, $Res Function(_RepositoryItem) _then) =
      __$RepositoryItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$RepositoryItemCopyWithImpl<$Res>
    implements _$RepositoryItemCopyWith<$Res> {
  __$RepositoryItemCopyWithImpl(this._self, this._then);

  final _RepositoryItem _self;
  final $Res Function(_RepositoryItem) _then;

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? description = freezed,
    Object? stargazersCount = null,
  }) {
    return _then(_RepositoryItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _self.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _self.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of RepositoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_self.owner, (value) {
      return _then(_self.copyWith(owner: value));
    });
  }
}

/// @nodoc
mixin _$Owner {
  String get login;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<Owner> get copyWith =>
      _$OwnerCopyWithImpl<Owner>(this as Owner, _$identity);

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Owner &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  @override
  String toString() {
    return 'Owner(login: $login, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) _then) =
      _$OwnerCopyWithImpl;
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._self, this._then);

  final Owner _self;
  final $Res Function(Owner) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
  }) {
    return _then(_self.copyWith(
      login: null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Owner].
extension OwnerPatterns on Owner {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Owner value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Owner() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Owner value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Owner():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Owner value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Owner() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String login, @JsonKey(name: 'avatar_url') String avatarUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Owner() when $default != null:
        return $default(_that.login, _that.avatarUrl);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String login, @JsonKey(name: 'avatar_url') String avatarUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Owner():
        return $default(_that.login, _that.avatarUrl);
      case _:
        throw StateError('Unexpected subclass');
    }
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String login, @JsonKey(name: 'avatar_url') String avatarUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Owner() when $default != null:
        return $default(_that.login, _that.avatarUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Owner implements Owner {
  const _Owner(
      {required this.login,
      @JsonKey(name: 'avatar_url') required this.avatarUrl});
  factory _Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OwnerCopyWith<_Owner> get copyWith =>
      __$OwnerCopyWithImpl<_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OwnerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Owner &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  @override
  String toString() {
    return 'Owner(login: $login, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) _then) =
      __$OwnerCopyWithImpl;
  @override
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$OwnerCopyWithImpl<$Res> implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(this._self, this._then);

  final _Owner _self;
  final $Res Function(_Owner) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? login = null,
    Object? avatarUrl = null,
  }) {
    return _then(_Owner(
      login: null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
