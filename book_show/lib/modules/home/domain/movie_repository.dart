import '../infra/models/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> fetchNowPlayingMovie();
}
