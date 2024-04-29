import 'dart:convert';

import 'package:bts/data/api/house_api.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:bts/utils/mocks/house_mock.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class HouseRepository {
  const HouseRepository();

  Future<Either<Failure, List<String>>> getHouseTypes();
  Future<Either<Failure, List<NearHouse>>> getHousesNear();
  Future<Either<Failure, List<BestForYouHouse>>> getHousesBest();
}

@Injectable(as: HouseRepository)
class HouseRepositoryImpl implements HouseRepository {
  final HouseAPI _houseApi;

  HouseRepositoryImpl(this._houseApi);

  @override
  Future<Either<Failure, List<String>>> getHouseTypes() async {
    try {
      List<dynamic> res = jsonDecode(HouseMock.houseListTypesJson);
      return Right(res.map((houseType) => houseType.toString()).toList());
    } on JsonUnsupportedObjectError catch (exception) {
      return Left(Failure(error: Error(exceptionMessage: exception.partialResult)));
    }
  }

  @override
  Future<Either<Failure, List<NearHouse>>> getHousesNear() async {
    //var dto = await _houseApi.getHousesNear();
    try {
      return Right(HouseMock.nearHouseListJson.map<NearHouse>((e) => NearHouse.fromJson(e)).toList());
    } on JsonUnsupportedObjectError catch (exception) {
      return Left(Failure(error: Error(exceptionMessage: exception.partialResult)));
    }
  }

  @override
  Future<Either<Failure, List<BestForYouHouse>>> getHousesBest() async {
    //var dto = await _houseApi.getHousesBest();
    try {
      return Right(HouseMock.bestHouseListJson.map<BestForYouHouse>((e) => BestForYouHouse.fromJson(e)).toList());
    } on JsonUnsupportedObjectError catch (exception) {
      return Left(Failure(error: Error(exceptionMessage: exception.partialResult)));
    }
  }
}
