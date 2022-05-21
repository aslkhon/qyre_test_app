part of 'productions_bloc.dart';

@freezed
class ProductionsState with _$ProductionsState {
  const factory ProductionsState.initial() = ProductionsStateInitial;
  const factory ProductionsState.success(
      List<ProductionThumbnail> productions) = ProductionsStateSucces;
  const factory ProductionsState.failure(String message) =
      ProductionsStateFailure;
}
