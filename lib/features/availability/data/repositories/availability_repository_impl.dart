import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/models/models.dart';
import '../../domain/domain.dart';

@Injectable(as: AvailabilityRepository)
class AvailabilityRepositoryImpl extends AvailabilityRepository {
  bool? _isAvailable(int dayIndex) {
    if (dayIndex == 0 || dayIndex == 3) {
      return true;
    }
    if (dayIndex == 1) {
      return false;
    }
    return null;
  }

  /// TODO: Change mock implementation to the real one
  @override
  Future<Either<Failure, List<Day>>> getCurrentWeek() async {
    final week = <Day>[
      for (var i = 0; i < 7; i++)
        Day(
          dateTime: DateTime.now().add(Duration(days: i)),
          isAvailable: _isAvailable(i),
        ),
    ];

    return Right(week);
  }
}
