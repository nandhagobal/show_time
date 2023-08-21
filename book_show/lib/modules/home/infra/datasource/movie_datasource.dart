import 'dart:convert';

import 'package:book_show/core/network/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:book_show/modules/home/infra/models/movie.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MovieDataSource {
  BaseApi _baseApi;

  MovieDataSource(this._baseApi);

  Future<List<Movie>> getNowShowingMovieList() async {
    return _baseApi.get<List<Movie>>("/movie/now_playing?language=en-US&page=1",
        (http.Response response) {
      var data = jsonDecode(response.body);
      var results = data["results"] as List;
      List<Movie> movies = [];
      for (var element in results) {
        movies.add(Movie.fromJson(element));
      }
      return movies;
    });
  }
}
