import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  factory Day({
    required DateTime dateTime,
    bool? isAvailable,
  }) = _Day;
}
