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
    //var dto = await _houseApi.getHouseTypes();
    List<dynamic> res = jsonDecode(HouseMock.houseListTypesJson);
    return Right(res.map((element) => "$element").toList());
  }

  @override
  Future<Either<Failure, List<NearHouse>>> getHousesNear() async {
    //var dto = await _houseApi.getHousesNear();
    var dto = jsonDecode(HouseMock.nearHouseListJson);
    return Right(dto["houseList"].map<NearHouse>((e) => NearHouse.fromJson(e)).toList());
  }

  @override
  Future<Either<Failure, List<BestForYouHouse>>> getHousesBest() async {
    //var dto = await _houseApi.getHousesBest();
    var dto = jsonDecode(HouseMock.bestHouseListJson);
    return Right(dto["houseList"].map<BestForYouHouse>((e) => BestForYouHouse.fromJson(e)).toList());
  }
}
