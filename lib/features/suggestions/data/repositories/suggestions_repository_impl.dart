import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/models/models.dart';
import '../../domain/domain.dart';

@Singleton(as: SuggestionsRepository)
class SuggestionsRepositoryImpl implements SuggestionsRepository {
  @override
  Future<Either<Failure, double>> getProfileCompletness() async {
    return const Right(.75);
  }

  @override
  Future<Either<Failure, bool>> shouldSuggestNetwork() async {
    return const Right(true);
  }

  @override
  Future<Either<Failure, bool>> shouldSuggestVerification() async {
    return const Right(true);
  }
}
