part of 'availability_bloc.dart';

@freezed
class AvailabilityState with _$AvailabilityState {
  const factory AvailabilityState.initial() = AvailabilityStateInitial;
  const factory AvailabilityState.success({
    required List<Day> week,
  }) = AvailabilityStateSuccess;
  const factory AvailabilityState.failure({
    required String message,
  }) = AvailabilityStateFailure;
}
