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
import 'features/suggestions/data/repositories/suggestions_repository_impl.dart'
    as _i8;
import 'features/suggestions/domain/blocs/extend_network_suggestion/extend_network_suggestion_cubit.dart'
    as _i10;
import 'features/suggestions/domain/blocs/profile_completeness/profile_completeness_cubit.dart'
    as _i11;
import 'features/suggestions/domain/blocs/verification_suggestion/verification_suggestion_cubit.dart'
    as _i9;
import 'features/suggestions/domain/repositories/suggestions_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AvailabilityBloc>(
      () => _i3.AvailabilityBloc(get<_i4.AvailabilityRepository>()));
  gh.factory<_i5.AvailabilityRepository>(
      () => _i6.AvailabilityRepositoryImpl());
  gh.singleton<_i7.SuggestionsRepository>(_i8.SuggestionsRepositoryImpl());
  gh.factory<_i9.VerificationSuggestionCubit>(
      () => _i9.VerificationSuggestionCubit(get<_i7.SuggestionsRepository>()));
  gh.factory<_i10.ExtendNetworkSuggestionCubit>(() =>
      _i10.ExtendNetworkSuggestionCubit(get<_i7.SuggestionsRepository>()));
  gh.factory<_i11.ProfileCompletenessCubit>(
      () => _i11.ProfileCompletenessCubit(get<_i7.SuggestionsRepository>()));
  return get;
}
