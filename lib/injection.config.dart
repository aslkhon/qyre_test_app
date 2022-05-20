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
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AvailabilityBloc>(
      () => _i3.AvailabilityBloc(get<_i4.AvailabilityRepository>()));
  gh.factory<_i5.AvailabilityRepository>(
      () => _i6.AvailabilityRepositoryImpl());
  return get;
}
