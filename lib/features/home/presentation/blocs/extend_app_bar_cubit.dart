import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ExtendAppBarCubit extends Cubit<bool> {
  ExtendAppBarCubit() : super(false);

  void extend() => emit(true);

  void reduce() => emit(false);
}
