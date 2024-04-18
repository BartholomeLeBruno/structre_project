import 'package:bts/data/repositories/dto/house_dto.dart';
import 'package:bts/data/repositories/mappers/house_mapper.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks/house_mocks.dart';

void main() {
  group('House Mapper tests', () {
    test('Given List of House DTO, when mapper is called, then should get List of Near House entity', () {
      //Given
      const response = HouseMocksForTest.nearHouseListJson;
      final List<HouseDTO> dto = response.map((e) => HouseDTO.fromJson(e)).toList();

      // When
      List<NearHouse> value = dto.toNearHousesEntity();

      // Then
      expect(value.length, HouseMocksForTest.nearHouseListEntity.length);
      expect(value.first.distancy, HouseMocksForTest.nearHouseListEntity.first.distancy);
      expect(value.first.host, HouseMocksForTest.nearHouseListEntity.first.host);
    });
    test('Given List of House DTO, when mapper is called, then should get List of Best House entity', () {
      //Given
      const response = HouseMocksForTest.bestHouseListJson;
      final List<HouseDTO> dto = response.map((e) => HouseDTO.fromJson(e)).toList();

      // When
      List<BestForYouHouse> value = dto.toBestHousesEntity();

      // Then
      expect(value.length, HouseMocksForTest.bestHouseListJson.length);
      expect(value.first.priceAYear, HouseMocksForTest.bestForYouHouseListEntity.first.priceAYear);
      expect(value.first.name, HouseMocksForTest.bestForYouHouseListEntity.first.name);
    });
  });
}
