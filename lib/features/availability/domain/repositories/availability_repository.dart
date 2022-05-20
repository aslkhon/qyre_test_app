import 'package:dartz/dartz.dart';

import '../../../../core/models/models.dart';
import '../entities/day.dart';

abstract class AvailabilityRepository {
  Future<Either<Failure, List<Day>>> getCurrentWeek();
}
