import 'package:bts/data/repositories/dto/house_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'house_api.g.dart';

@lazySingleton
@RestApi()
abstract class HouseAPI {
  factory HouseAPI(Dio dio) = _HouseAPI;

  @factoryMethod
  static HouseAPI create(Dio dio) {
    return HouseAPI(dio);
  }

  @GET("house-types")
  Future<List<String>> getHouseTypes();

  @GET("house/near")
  Future<HousesDTO> getHousesNear();

  @GET("house/best")
  Future<HousesDTO> getHousesBest();
}
