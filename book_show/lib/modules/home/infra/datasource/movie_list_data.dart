import 'package:http/http.dart' as http;
import 'package:book_show/core/config/app_config.dart';

class MovieDataSource {
  Future<http.Response> getNowShowingMovieList() async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer ${Config.API_KEY}"
    };
    http.Response response = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1"), headers: headers);
    print(response.body);
    return response;
  }
}
