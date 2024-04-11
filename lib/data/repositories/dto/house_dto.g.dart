// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HousesDTO _$HousesDTOFromJson(Map<String, dynamic> json) => HousesDTO(
      (json['houseList'] as List<dynamic>?)
          ?.map((e) => HouseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HousesDTOToJson(HousesDTO instance) => <String, dynamic>{
      'houseList': instance.houseList,
    };

HouseDTO _$HouseDTOFromJson(Map<String, dynamic> json) => HouseDTO(
      json['id'] as String?,
      json['imageUrl'] as String?,
      json['name'] as String?,
      json['host'] as String?,
      json['countBedRoom'] as int?,
      json['countBathRoom'] as int?,
      json['priceAYear'] as int?,
      (json['distancy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HouseDTOToJson(HouseDTO instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'host': instance.host,
      'countBedRoom': instance.countBedRoom,
      'countBathRoom': instance.countBathRoom,
      'priceAYear': instance.priceAYear,
      'distancy': instance.distancy,
    };
