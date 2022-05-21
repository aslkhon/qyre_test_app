// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/availability/data/repositories/availability_repository_impl.dart'
    as _i6;
import 'features/availability/domain/blocs/availability/availability_bloc.dart'
    as _i3;
import 'features/availability/domain/domain.dart' as _i5;
import 'features/availability/domain/repositories/availability_repository.dart'
    as _i4;
import 'features/productions/data/repositories/productions_repository_impl.dart'
    as _i12;
import 'features/productions/domain/blocs/productions/productions_bloc.dart'
    as _i9;
import 'features/productions/domain/domain.dart' as _i11;
import 'features/productions/domain/repositories/productions_repository.dart'
    as _i10;
import 'features/suggestions/data/repositories/suggestions_repository_impl.dart'
    as _i15;
import 'features/suggestions/domain/blocs/extend_network_suggestion/extend_network_suggestion_cubit.dart'
    as _i7;
import 'features/suggestions/domain/blocs/profile_completeness/profile_completeness_cubit.dart'
    as _i13;
import 'features/suggestions/domain/blocs/verification_suggestion/verification_suggestion_cubit.dart'
    as _i16;
import 'features/suggestions/domain/domain.dart' as _i14;
import 'features/suggestions/domain/repositories/suggestions_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AvailabilityBloc>(
      () => _i3.AvailabilityBloc(get<_i4.AvailabilityRepository>()));
  gh.factory<_i5.AvailabilityRepository>(
      () => _i6.AvailabilityRepositoryImpl());
  gh.factory<_i7.ExtendNetworkSuggestionCubit>(
      () => _i7.ExtendNetworkSuggestionCubit(get<_i8.SuggestionsRepository>()));
  gh.factory<_i9.ProductionsBloc>(
      () => _i9.ProductionsBloc(get<_i10.ProductionsRepository>()));
  gh.factory<_i11.ProductionsRepository>(
      () => _i12.ProductionsRepositoryImpl());
  gh.factory<_i13.ProfileCompletenessCubit>(
      () => _i13.ProfileCompletenessCubit(get<_i8.SuggestionsRepository>()));
  gh.singleton<_i14.SuggestionsRepository>(_i15.SuggestionsRepositoryImpl());
  gh.factory<_i16.VerificationSuggestionCubit>(
      () => _i16.VerificationSuggestionCubit(get<_i8.SuggestionsRepository>()));
  return get;
}
