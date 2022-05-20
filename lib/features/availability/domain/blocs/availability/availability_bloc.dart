import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/availability_repository.dart';
import '../../entities/day.dart';

part 'availability_event.dart';
part 'availability_state.dart';
part 'availability_bloc.freezed.dart';

@injectable
class AvailabilityBloc extends Bloc<AvailabilityEvent, AvailabilityState> {
  final AvailabilityRepository _repository;

  AvailabilityBloc(this._repository) : super(const AvailabilityStateInitial()) {
    on<_Fetch>(_onFetch);
  }

  void _onFetch(_Fetch event, Emitter<AvailabilityState> emit) async {
    emit(const AvailabilityState.initial());

    final result = await _repository.getCurrentWeek();

    result.fold(
      (l) => emit(AvailabilityState.failure(message: l.message)),
      (r) => emit(AvailabilityState.success(week: r)),
    );
  }
}
