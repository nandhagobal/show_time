import 'package:book_show/modules/home/domain/models/movie.dart';
import 'package:book_show/modules/home/domain/usecase/movie_usecase.dart';
import 'package:book_show/modules/home/ui/movie_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../infra/datasource/movie_datasource_test.mocks.dart';
import 'movie_bloc_test.mocks.dart';

@GenerateMocks([MovieUseCase])
void main() {
  test("get now playing movie list and verify response", () async {
    Movie mockMovie = MockMovie();
    MovieUseCase movieUseCase = MockMovieUseCase();
    when(mockMovie.title).thenReturn("MovieTitle");
    List<Movie> mockMovies = [mockMovie];
    when(movieUseCase.fetchNowPlayingMovie())
        .thenAnswer((_) => Future.value(mockMovies));
    MovieBloc movieBloc = MovieBloc(movieUseCase);

    movieBloc.fetchNowPlayingMovie();

    expect(await movieBloc.nowPlayingMovies.first, mockMovies);
  });
}
