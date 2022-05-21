import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/suggestions_repository.dart';

@injectable
class ExtendNetworkSuggestionCubit extends Cubit<bool> {
  final SuggestionsRepository _repository;

  ExtendNetworkSuggestionCubit(this._repository) : super(false);

  void check() async {
    final result = await _repository.shouldSuggestNetwork();

    result.fold((l) => emit(false), (r) => emit(r));
  }
}
