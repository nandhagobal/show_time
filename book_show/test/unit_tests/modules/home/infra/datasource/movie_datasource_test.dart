import 'package:book_show/core/network/base_api.dart';
import 'package:book_show/modules/home/domain/models/movie.dart';
import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_datasource_test.mocks.dart';


@GenerateMocks([BaseApi, Movie])
void main() {
  test("getNowShowingMovieList", () async {
    var baseApi = MockBaseApi();
    Movie mockMovie = MockMovie();
    when(mockMovie.title).thenReturn("MovieTitle");
    List<Movie> mockMovies = [mockMovie];
    var dataSource = MovieDataSource(baseApi);
    when(baseApi.get<List<Movie>>(any, any)).thenAnswer((_) => Future.value(mockMovies));
    var result = await dataSource.getNowShowingMovieList();
    expect(result, isInstanceOf<List<Movie>>());
    expect(result[0], mockMovie);
  });
}
