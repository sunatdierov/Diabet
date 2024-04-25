// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/repository/diabet.dart' as _i6;
import '../../data/storage/storage.dart' as _i3;
import '../../presentation/pages/first/bloc/bloc.dart' as _i7;
import '../../presentation/pages/home/bloc/bloc.dart' as _i8;
import '../../presentation/pages/second/bloc/bloc.dart' as _i9;
import '../../presentation/pages/third/bloc/bloc.dart' as _i10;
import '../../presentation/router/bloc/bloc.dart' as _i5;
import '../notifications.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.DiabetStorage>(() => _i3.DiabetStorageHive());
  gh.factory<_i4.NotificationService>(() => _i4.NotificationService());
  gh.singleton<_i5.RouterEventSink>(_i5.RouterBloc());
  gh.factory<_i6.DiabetRepository>(() => _i6.DiabetRepositoryImpl(
      get<_i3.DiabetStorage>(), get<_i4.NotificationService>()));
  gh.factory<_i7.FirstPageBloc>(
      () => _i7.FirstPageBloc(get<_i6.DiabetRepository>()));
  gh.factory<_i8.HomePageBloc>(
      () => _i8.HomePageBloc(get<_i5.RouterEventSink>()));
  gh.factory<_i9.SecondPageBloc>(
      () => _i9.SecondPageBloc(get<_i6.DiabetRepository>()));
  gh.factory<_i10.ThirdPageBloc>(
      () => _i10.ThirdPageBloc(get<_i6.DiabetRepository>()));
  return get;
}
