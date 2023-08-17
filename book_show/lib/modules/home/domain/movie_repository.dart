import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:book_show/modules/home/repository/movie_repository_impl.dart';
import 'package:injectable/injectable.dart';

import '../infra/models/movie.dart';

@Singleton()
abstract class MovieRepository {
  Future<List<Movie>> fetchNowPlayingMovie();

  @FactoryMethod()
  factory MovieRepository.fromRemote(MovieDataSource movieDataSource) => MovieRepositoryImpl(movieDataSource);
}
