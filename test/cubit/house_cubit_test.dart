import 'package:bloc_test/bloc_test.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:bts/local/usecase/house/get_house_best_for_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_near_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_types_usecase.dart';
import 'package:bts/presentation/home/cubit/home_cubit.dart';
import 'package:bts/presentation/home/cubit/home_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/house_mocks.dart';
import '../mocks/mocks.dart';

void main() {
  late GetHouseTypesUseCase getHouseTypesUseCase;
  late GetHouseNearYouUseCase getHouseNearYouUseCase;
  late GetHouseBestForYouUseCase getHouseBestForYouUseCase;

  setUp(() {
    getHouseTypesUseCase = MockGetHouseTypesUseCase();
    getHouseNearYouUseCase = MockGetHouseNearYouUseCase();
    getHouseBestForYouUseCase = MockGetHouseBestForYouUseCase();
  });

  tearDown(
    () {
      resetMocktailState();
    },
  );

  group('group getHouseTypesUseCase', () {
    blocTest<HomeCubit, HomeState>(
      'on get house type usecase to get styles'
      'when no error occurs',
      setUp: () {
        when(() => getHouseTypesUseCase())
            .thenAnswer((_) async => Future<Either<Failure, List<String>>>.value(Right(HouseMocksForTest.houseListTypesString)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getStyles(),
      expect: () => [
        HomeState(
          styles: HouseMocksForTest.houseListTypesString,
          nearHouseList: [],
          bestForYouHouseList: [],
          selectedStyle: HouseMocksForTest.houseListTypesString.first,
        ),
      ],
    );
    blocTest<HomeCubit, HomeState>(
      'on get house type usecase to get styles'
      'when error occurs emit failure',
      setUp: () {
        when(() => getHouseTypesUseCase()).thenAnswer((_) async => Future<Either<Failure, List<String>>>.value(Left(HouseMocksForTest.failure)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getStyles(),
      expect: () => [
        HomeState(
          failure: HouseMocksForTest.failure,
          styles: [],
          nearHouseList: [],
          bestForYouHouseList: [],
        ),
      ],
    );
  });

  group('group getHouseNearYouUseCase', () {
    blocTest<HomeCubit, HomeState>(
      'on get house near you usecase'
      'when no error occurs',
      setUp: () {
        when(() => getHouseNearYouUseCase())
            .thenAnswer((_) async => Future<Either<Failure, List<NearHouse>>>.value(const Right(HouseMocksForTest.nearHouseListEntity)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getHouseNearYou(),
      expect: () => [
        const HomeState(
          styles: [],
          nearHouseList: HouseMocksForTest.nearHouseListEntity,
          bestForYouHouseList: [],
        ),
      ],
    );
    blocTest<HomeCubit, HomeState>(
      'on get house near you usecase'
      'when error occurs emit failure',
      setUp: () {
        when(() => getHouseNearYouUseCase()).thenAnswer((_) async => Future<Either<Failure, List<NearHouse>>>.value(Left(HouseMocksForTest.failure)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getHouseNearYou(),
      expect: () => [
        HomeState(
          failure: HouseMocksForTest.failure,
          styles: [],
          nearHouseList: [],
          bestForYouHouseList: [],
        ),
      ],
    );
  });

  group('group getHouseBestForYouUseCase', () {
    blocTest<HomeCubit, HomeState>(
      'on get house best for you usecase'
      'when no error occurs',
      setUp: () {
        when(() => getHouseBestForYouUseCase())
            .thenAnswer((_) async => Future<Either<Failure, List<BestForYouHouse>>>.value(const Right(HouseMocksForTest.bestForYouHouseListEntity)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getHouseBestForYou(),
      expect: () => [
        const HomeState(
          styles: [],
          nearHouseList: [],
          bestForYouHouseList: HouseMocksForTest.bestForYouHouseListEntity,
        ),
      ],
    );
    blocTest<HomeCubit, HomeState>(
      'on get house near you usecase'
      'when error occurs emit failure',
      setUp: () {
        when(() => getHouseBestForYouUseCase())
            .thenAnswer((_) async => Future<Either<Failure, List<BestForYouHouse>>>.value(Left(HouseMocksForTest.failure)));
      },
      build: () => HomeCubit(getHouseTypesUseCase, getHouseNearYouUseCase, getHouseBestForYouUseCase),
      act: (cubit) => cubit.getHouseBestForYou(),
      expect: () => [
        HomeState(
          failure: HouseMocksForTest.failure,
          styles: [],
          nearHouseList: [],
          bestForYouHouseList: [],
        ),
      ],
    );
  });
}
