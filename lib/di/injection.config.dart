// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bts/data/api/house_api.dart' as _i5;
import 'package:bts/data/repositories/house_repository.dart' as _i6;
import 'package:bts/local/usecase/house/get_house_best_for_you_usecase.dart'
    as _i7;
import 'package:bts/local/usecase/house/get_house_near_you_usecase.dart' as _i8;
import 'package:bts/local/usecase/house/get_house_types_usecase.dart' as _i9;
import 'package:bts/module/module.dart' as _i11;
import 'package:bts/module/navigation/app_router.dart' as _i3;
import 'package:bts/presentation/home/cubit/home_cubit.dart' as _i10;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final module = _$Module();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => module.httpClient);
    gh.lazySingleton<_i5.HouseAPI>(() => _i5.HouseAPI.create(gh<_i4.Dio>()));
    gh.factory<_i6.HouseRepository>(
        () => _i6.HouseRepositoryImpl(gh<_i5.HouseAPI>()));
    gh.factory<_i7.GetHouseBestForYouUseCase>(
        () => _i7.GetHouseBestForYouUseCase(gh<_i6.HouseRepository>()));
    gh.factory<_i8.GetHouseNearYouUseCase>(
        () => _i8.GetHouseNearYouUseCase(gh<_i6.HouseRepository>()));
    gh.factory<_i9.GetHouseTypesUseCase>(
        () => _i9.GetHouseTypesUseCase(gh<_i6.HouseRepository>()));
    gh.factory<_i10.HomeCubit>(() => _i10.HomeCubit(
          gh<_i9.GetHouseTypesUseCase>(),
          gh<_i8.GetHouseNearYouUseCase>(),
          gh<_i7.GetHouseBestForYouUseCase>(),
        ));
    return this;
  }
}

class _$Module extends _i11.Module {}
