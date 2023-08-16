import 'package:book_show/core/config/app_config.dart';

import 'package:http/http.dart' as http;

class BaseApi {
  Map<String, String> get headers => {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer ${Config.API_KEY}"
      };

  Future<T> get<T>(String path, Function fun) async {
    http.Response response =
        await http.get(Uri.parse("${Config.BASE_URL}$path"), headers: headers);
    if (response.statusCode == 200) {
      return fun(response);
    } else {
      throw Exception("Something went Wrong..!!!");
    }
  }
}
