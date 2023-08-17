// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:book_show/modules/home/domain/movie_repository.dart' as _i4;
import 'package:book_show/modules/home/domain/usecase/movie_usecase.dart'
    as _i5;
import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart'
    as _i3;
import 'package:book_show/modules/home/ui/movie_bloc.dart' as _i6;
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
    gh.factory<_i3.MovieDataSource>(() => _i3.MovieDataSource());
    gh.singleton<_i4.MovieRepository>(
        _i4.MovieRepository.fromRemote(gh<_i3.MovieDataSource>()));
    gh.factory<_i5.MovieUseCase>(
        () => _i5.MovieUseCase(gh<_i4.MovieRepository>()));
    gh.singleton<_i6.MovieBloc>(
      _i6.MovieBloc(gh<_i5.MovieUseCase>()),
      dispose: (i) => i.dispose(),
    );
    return this;
  }
}
