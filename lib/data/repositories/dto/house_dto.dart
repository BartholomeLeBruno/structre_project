import 'package:json_annotation/json_annotation.dart';

part 'house_dto.g.dart';

@JsonSerializable()
class HousesDTO {
  List<HouseDTO>? houseList;

  HousesDTO(this.houseList);

  factory HousesDTO.fromJson(Map<String, dynamic> json) => _$HousesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$HousesDTOToJson(this);
}

@JsonSerializable()
class HouseDTO {
  String? id;
  String? imageUrl;
  String? name;
  String? host;
  int? countBedRoom;
  int? countBathRoom;
  int? priceAYear;
  double? distancy;

  HouseDTO(this.id, this.imageUrl, this.name, this.host, this.countBedRoom, this.countBathRoom, this.priceAYear, this.distancy);

  factory HouseDTO.fromJson(Map<String, dynamic> json) => _$HouseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$HouseDTOToJson(this);
}
