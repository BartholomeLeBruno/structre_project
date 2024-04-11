import 'package:bts/data/repositories/dto/house_dto.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/near_house.dart';

extension NearHousesEx on List<HouseDTO>? {
  List<NearHouse> toNearHousesEntity() => this?.map((e) => e.toNearHouseEntity()).toList() ?? List.empty();
}

extension BestHousesEx on List<HouseDTO>? {
  List<BestForYouHouse> toBestHousesEntity() => this?.map((e) => e.toBestHouseEntity()).toList() ?? List.empty();
}

extension NearHouseEx on HouseDTO {
  NearHouse toNearHouseEntity() => NearHouse(
        distancy: distancy ?? 0,
        imagePath: imageUrl ?? "",
        name: name ?? "",
        host: host ?? "",
      );
}

extension BestHouseEx on HouseDTO {
  BestForYouHouse toBestHouseEntity() => BestForYouHouse(
        countBathRoom: countBathRoom ?? 0,
        countBedRoom: countBedRoom ?? 0,
        priceAYear: priceAYear ?? 0,
        imagePath: imageUrl ?? "",
        name: name ?? "",
        host: host ?? "",
      );
}
