import 'package:bts/local/model/failure.dart';
import 'package:bts/local/usecase/house/get_house_types_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/house_mocks.dart';
import '../mocks/mocks.dart';

void main() {
  late GetHouseTypesUseCase useCase;
  late MockHouseRepository mockRepository;

  setUp(() {
    mockRepository = MockHouseRepository();
    useCase = GetHouseTypesUseCase(mockRepository);
  });

  tearDown(
    () {
      resetMocktailState();
    },
  );

  group('Get House List Type Use case tests', () {
    test(
        'Given GetHouseTypesUseCase scalled with productId,'
        'When GetHouseTypes is called from repository and no error occurs,'
        'Then return a success', () async {
      // Given
      when(() => mockRepository.getHouseTypes())
          .thenAnswer((_) async => Future<Either<Failure, List<String>>>.value(Right(HouseMocksForTest.houseListTypesString)));

      // When
      final result = await useCase();

      // Then
      verify(() => mockRepository.getHouseTypes()).called(1);

      expect(result, equals(Right(HouseMocksForTest.houseListTypesString)));
    });
  });
}
