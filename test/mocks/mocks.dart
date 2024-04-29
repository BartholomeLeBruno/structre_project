import 'package:bts/data/api/house_api.dart';
import 'package:bts/data/repositories/house_repository.dart';
import 'package:bts/local/usecase/house/get_house_best_for_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_near_you_usecase.dart';
import 'package:bts/local/usecase/house/get_house_types_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockHouseApi extends Mock implements HouseAPI {}

class MockHouseRepository extends Mock implements HouseRepository {}

class MockGetHouseTypesUseCase extends Mock implements GetHouseTypesUseCase {}

class MockGetHouseNearYouUseCase extends Mock implements GetHouseNearYouUseCase {}

class MockGetHouseBestForYouUseCase extends Mock implements GetHouseBestForYouUseCase {}
