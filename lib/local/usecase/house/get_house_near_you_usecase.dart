import 'package:bts/data/repositories/house_repository.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/model/near_house.dart';
import 'package:bts/local/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHouseNearYouUseCase extends UseCase<Failure, List<NearHouse>> {
  final HouseRepository _houseRepository;

  GetHouseNearYouUseCase(this._houseRepository);

  @override
  Future<Either<Failure, List<NearHouse>>> call() async {
    return await _houseRepository.getHousesNear();
  }
}
