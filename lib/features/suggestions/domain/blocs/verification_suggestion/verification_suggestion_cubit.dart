import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/suggestions_repository.dart';

@injectable
class VerificationSuggestionCubit extends Cubit<bool> {
  final SuggestionsRepository _repository;

  VerificationSuggestionCubit(this._repository) : super(false);

  void check() async {
    final result = await _repository.shouldSuggestVerification();

    result.fold((l) => emit(false), (r) => emit(r));
  }
}
