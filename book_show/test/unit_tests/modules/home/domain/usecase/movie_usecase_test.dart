
import 'package:book_show/modules/home/domain/models/movie.dart';
import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:book_show/modules/home/domain/usecase/movie_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../infra/datasource/movie_datasource_test.mocks.dart';
import 'movie_usecase_test.mocks.dart';

@GenerateMocks([MovieRepository])
void main(){
  test("call movie repository and verify the output", () async {
    MovieRepository movieRepository = MockMovieRepository();
    MovieUseCase movieUseCase = MovieUseCase(movieRepository);
    Movie mockMovie = MockMovie();
    when(mockMovie.title).thenReturn("MovieTitle");
    List<Movie> mockMovies = [mockMovie];
    when(movieRepository.fetchNowPlayingMovie()).thenAnswer((_) => Future.value(mockMovies));

    var result = await movieUseCase.fetchNowPlayingMovie();

    expect(result, isInstanceOf<List<Movie>>());
    expect(result[0], mockMovie);
  });
}