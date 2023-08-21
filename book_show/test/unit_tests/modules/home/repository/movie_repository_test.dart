import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:book_show/modules/home/infra/models/movie.dart';
import 'package:book_show/modules/home/repository/movie_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../infra/datasource/movie_datasource_test.mocks.dart';
import 'movie_repository_test.mocks.dart';

@GenerateMocks([MovieDataSource])
void main() {
  test("get now playing movie list and verify response", () async {
    Movie mockMovie = MockMovie();
    when(mockMovie.title).thenReturn("MovieTitle");
    List<Movie> mockMovies = [mockMovie];
    MovieDataSource _movieDataSource = MockMovieDataSource();
    when(_movieDataSource.getNowShowingMovieList())
        .thenAnswer((realInvocation) => Future.value(mockMovies));
    MovieRepository repository = MovieRepositoryImpl(_movieDataSource);
    var result = await repository.fetchNowPlayingMovie();
    expect(result, isInstanceOf<List<Movie>>());
    expect(result[0], mockMovie);
  });
}
