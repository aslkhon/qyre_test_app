part of 'availability_bloc.dart';

@freezed
class AvailabilityEvent with _$AvailabilityEvent {
  const factory AvailabilityEvent.fetch() = _Fetch;
}
