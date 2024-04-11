import 'package:dartz/dartz.dart';

abstract class UseCase<L, R> {
  Future<Either<L, R>> call();
}
