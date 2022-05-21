import 'package:dartz/dartz.dart';

import '../../../../core/models/models.dart';

abstract class SuggestionsRepository {
  /// In case of Right returns completness percent
  Future<Either<Failure, double>> getProfileCompletness();

  Future<Either<Failure, bool>> shouldSuggestNetwork();

  Future<Either<Failure, bool>> shouldSuggestVerification();
}
