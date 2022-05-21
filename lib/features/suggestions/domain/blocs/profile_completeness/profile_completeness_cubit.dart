import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/suggestions_repository.dart';

@injectable
class ProfileCompletenessCubit extends Cubit<double?> {
  final SuggestionsRepository _repository;

  ProfileCompletenessCubit(this._repository) : super(null);

  void check() async {
    final result = await _repository.getProfileCompletness();

    result.fold((l) => emit(null), (r) => emit(r));
  }
}
