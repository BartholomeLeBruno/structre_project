import 'package:bts/data/api/house_api.dart';
import 'package:bts/data/repositories/house_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/house_mocks.dart';
import '../mocks/mocks.dart';

void main() {
  late HouseAPI houseAPI;
  late HouseRepositoryImpl repository;

  setUp(() {
    houseAPI = HouseMockApi();
    repository = HouseRepositoryImpl(houseAPI);
  });

  tearDown(
    () {
      resetMocktailState();
    },
  );
  group('get house types tests', () {
    test(
        'When get houses type called and no error occurs,'
        'Then return a list of house type as String', () async {
      // Given
      when(() => houseAPI.getHouseTypes()).thenAnswer((_) => Future.value(HouseMocksForTest.houseListTypesString));

      // When
      final result = await repository.getHouseTypes();

      // Then
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, HouseMocksForTest.houseListTypesString));
    });
  });
  group('get house near you tests', () {
    test(
        'When get near house called and no error occurs,'
        'Then return a list of near house', () async {
      // Given
      when(() => houseAPI.getHousesNear()).thenAnswer((_) => Future.value(HouseMocksForTest.housesNearDTO));

      // When
      final result = await repository.getHousesNear();

      // Then
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, HouseMocksForTest.nearHouseListEntity));
    });
  });
  group('get house best for you tests', () {
    test(
        'When get best for you house called and no error occurs,'
        'Then return a list of best for you house', () async {
      // Given
      when(() => houseAPI.getHousesBest()).thenAnswer((_) => Future.value(HouseMocksForTest.housesBestForYouDTO));

      // When
      final result = await repository.getHousesNear();

      // Then
      expect(result.isRight(), true);
      result.fold((l) => null, (r) => expect(r, HouseMocksForTest.nearHouseListEntity));
    });
  });
}
