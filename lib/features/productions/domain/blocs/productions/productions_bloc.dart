import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/productions_repository.dart';
import '../../entities/production_thumbnail.dart';

part 'productions_event.dart';
part 'productions_state.dart';
part 'productions_bloc.freezed.dart';

@injectable
class ProductionsBloc extends Bloc<ProductionsEvent, ProductionsState> {
  final ProductionsRepository _repository;

  ProductionsBloc(this._repository) : super(const ProductionsStateInitial()) {
    on<_Fetch>(_onFetch);
  }

  void _onFetch(_Fetch event, Emitter<ProductionsState> emit) async {
    final result = await _repository.getProductions();

    result.fold(
      (l) => emit(ProductionsState.failure(l.message)),
      (r) => emit(ProductionsState.success(r)),
    );
  }
}
