import 'package:bts/local/model/failure.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:bts/local/usecase/house/get_house_near_you_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/house_mocks.dart';
import '../mocks/mocks.dart';

void main() {
  late GetHouseNearYouUseCase useCase;
  late MockHouseRepository mockRepository;

  setUp(() {
    mockRepository = MockHouseRepository();
    useCase = GetHouseNearYouUseCase(mockRepository);
  });

  tearDown(
    () {
      resetMocktailState();
    },
  );

  group('Get House Near Use case tests', () {
    test(
        'Given GetHouseNearYouUseCase called with productId,'
        'When getHousesNear is called from repository and no error occurs,'
        'Then return a success', () async {
      // Given
      when(() => mockRepository.getHousesNear())
          .thenAnswer((_) async => Future<Either<Failure, List<NearHouse>>>.value(const Right(HouseMocksForTest.nearHouseListEntity)));

      // When
      final result = await useCase();

      // Then
      verify(() => mockRepository.getHousesNear()).called(1);

      expect(result, equals(const Right(HouseMocksForTest.nearHouseListEntity)));
    });
  });
}
