import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/const/const.dart';
import '../../../../core/models/models.dart';
import '../../domain/domain.dart';

@Injectable(as: ProductionsRepository)
class ProductionsRepositoryImpl extends ProductionsRepository {
  @override
  Future<Either<Failure, List<ProductionThumbnail>>> getProductions() async {
    final productions = [
      ProductionThumbnail(
        title: 'Production Name That is Long',
        imageSrc: ImagePaths.image1,
        location: 'Sweden',
        startTime: DateTime(2022, 1, 14),
        endTime: DateTime(2023, 2, 23),
      ),
      ProductionThumbnail(
        title:
            'What has been seen very very long time ago, so we do not even remember when it was.',
        imageSrc: ImagePaths.image2,
        location: 'Sweden',
        startTime: DateTime(2022, 1, 14),
        endTime: DateTime(2023, 2, 23),
      ),
    ];

    return Right(productions);
  }
}
