import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:book_show/modules/home/infra/models/movie.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieDataSource movieDataSource;

  MovieRepositoryImpl(this.movieDataSource);

  @override
  Future<List<Movie>> fetchNowPlayingMovie() =>
      movieDataSource.getNowShowingMovieList();
}
