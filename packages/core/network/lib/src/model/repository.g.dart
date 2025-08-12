// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    _SearchResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(_SearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_RepositoryItem _$RepositoryItemFromJson(Map<String, dynamic> json) =>
    _RepositoryItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
    );

Map<String, dynamic> _$RepositoryItemToJson(_RepositoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
    };

_Owner _$OwnerFromJson(Map<String, dynamic> json) => _Owner(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
    };
