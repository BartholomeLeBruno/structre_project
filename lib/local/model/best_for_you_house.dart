import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_for_you_house.freezed.dart';
part 'best_for_you_house.g.dart';

@freezed
class BestForYouHouse with _$BestForYouHouse {
  const factory BestForYouHouse({
    required int countBedRoom,
    required int countBathRoom,
    required int priceAYear,
    required String imagePath,
    required String name,
    required String host,
  }) = _BestForYouHouse;
  factory BestForYouHouse.fromJson(Map<String, dynamic> json) => _$BestForYouHouseFromJson(json);
}
