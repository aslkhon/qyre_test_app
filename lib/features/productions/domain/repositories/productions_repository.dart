import 'package:dartz/dartz.dart';

import '../../../../core/models/models.dart';
import '../entities/production_thumbnail.dart';

abstract class ProductionsRepository {
  Future<Either<Failure, List<ProductionThumbnail>>> getProductions();
}
