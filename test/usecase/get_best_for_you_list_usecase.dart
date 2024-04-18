import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/usecase/house/get_house_best_for_you_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/house_mocks.dart';
import '../mocks/mocks.dart';

void main() {
  late GetHouseBestForYouUseCase useCase;
  late MockHouseRepository mockRepository;

  setUp(() {
    mockRepository = MockHouseRepository();
    useCase = GetHouseBestForYouUseCase(mockRepository);
  });

  tearDown(
    () {
      resetMocktailState();
    },
  );

  group('Get House Best For You Use case tests', () {
    test(
        'Given GetHouseBestForYouUseCase called with productId,'
        'When getHousesBest is called from repository and no error occurs,'
        'Then return a success', () async {
      // Given
      when(() => mockRepository.getHousesBest())
          .thenAnswer((_) async => Future<Either<Failure, List<BestForYouHouse>>>.value(const Right(HouseMocksForTest.bestForYouHouseListEntity)));

      // When
      final result = await useCase();

      // Then
      verify(() => mockRepository.getHousesBest()).called(1);

      expect(result, equals(const Right(HouseMocksForTest.bestForYouHouseListEntity)));
    });
  });
}
