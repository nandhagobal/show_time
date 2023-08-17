import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:book_show/modules/home/infra/models/movie.dart';

class MovieUseCase{
  MovieRepository movieRepository;

  MovieUseCase(this.movieRepository);

  Future<List<Movie>> fetchNowPlayingMovie() => movieRepository.fetchNowPlayingMovie();

}