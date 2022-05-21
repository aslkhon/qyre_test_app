import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_thumbnail.freezed.dart';

@freezed
class ProductionThumbnail with _$ProductionThumbnail {
  factory ProductionThumbnail({
    required final String title,
    required final String imageSrc,
    required final String location,
    required final DateTime startTime,
    required final DateTime endTime,
  }) = _ProductionThumbnail;
}
