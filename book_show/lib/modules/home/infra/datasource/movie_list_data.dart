import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:book_show/core/config/app_config.dart';
import 'package:book_show/modules/home/infra/models/movie.dart';

class MovieDataSource {
  Future<List<Movie>> getNowShowingMovieList() async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer ${Config.API_KEY}"
    };
    http.Response response = await http.get(
        Uri.parse(
            "https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1"),
        headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var results = data["results"] as List;
      List<Movie> movies = [];
      results.forEach((element) {
        movies.add(Movie.fromJson(element));
      });
      return movies;
    } else {
      throw Exception("Something went Wrong..!!!");
    }
  }
}
