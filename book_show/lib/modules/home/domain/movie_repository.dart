import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:injectable/injectable.dart';

import '../infra/repository/movie_repository_impl.dart';
import 'models/movie.dart';


@Singleton()
abstract class MovieRepository {
  Future<List<Movie>> fetchNowPlayingMovie();

  @FactoryMethod()
  factory MovieRepository.fromRemote(MovieDataSource movieDataSource) => MovieRepositoryImpl(movieDataSource);
}
