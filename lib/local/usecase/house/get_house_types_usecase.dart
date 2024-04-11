import 'package:bts/data/repositories/house_repository.dart';
import 'package:bts/local/model/failure.dart';
import 'package:bts/local/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHouseTypesUseCase extends UseCase<Failure, List<String>> {
  final HouseRepository _houseRepository;

  GetHouseTypesUseCase(this._houseRepository);

  @override
  Future<Either<Failure, List<String>>> call() async {
    return await _houseRepository.getHouseTypes();
  }
}
