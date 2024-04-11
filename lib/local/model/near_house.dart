import 'package:freezed_annotation/freezed_annotation.dart';

part 'near_house.freezed.dart';
part 'near_house.g.dart';

@freezed
class NearHouse with _$NearHouse {
  const factory NearHouse({
    required double distancy,
    required String imagePath,
    required String name,
    required String host,
  }) = _NearHouse;
  factory NearHouse.fromJson(Map<String, dynamic> json) => _$NearHouseFromJson(json);
}
