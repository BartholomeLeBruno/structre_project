// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'near_house.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NearHouseImpl _$$NearHouseImplFromJson(Map<String, dynamic> json) =>
    _$NearHouseImpl(
      distancy: (json['distancy'] as num).toDouble(),
      imagePath: json['imagePath'] as String,
      name: json['name'] as String,
      host: json['host'] as String,
    );

Map<String, dynamic> _$$NearHouseImplToJson(_$NearHouseImpl instance) =>
    <String, dynamic>{
      'distancy': instance.distancy,
      'imagePath': instance.imagePath,
      'name': instance.name,
      'host': instance.host,
    };
