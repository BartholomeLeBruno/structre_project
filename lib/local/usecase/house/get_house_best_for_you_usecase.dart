import 'package:bts/data/repositories/house_repository.dart';
import 'package:bts/local/model/best_for_you_house.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHouseBestForYouUseCase extends UseCase<Failure, List<BestForYouHouse>> {
  final HouseRepository _houseRepository;

  GetHouseBestForYouUseCase(this._houseRepository);

  @override
  Future<Either<Failure, List<BestForYouHouse>>> call() async {
    return await _houseRepository.getHousesBest();
  }
}
