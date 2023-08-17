import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../domain/usecase/movie_usecase.dart';
import '../infra/models/movie.dart';

@Singleton()
class MovieBloc {
  final MovieUseCase _movieUseCase;

  MovieBloc(this._movieUseCase);

  final _movieFetcher = PublishSubject<List<Movie>>();

  Stream<List<Movie>> get nowPlayingMovies => _movieFetcher.stream;

  fetchNowPlayingMovie() async {
    List<Movie> allMovie = await _movieUseCase.fetchNowPlayingMovie();
    _movieFetcher.sink.add(allMovie);
  }

  @disposeMethod
  dispose() {
    _movieFetcher.close();
  }
}
