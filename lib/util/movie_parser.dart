import 'dart:convert';

import 'package:movie_app/models/movie.dart';

class MovieParser {
  static List<Movie> parse(String jsonString) {
    final List<dynamic> parsedJsonList = jsonDecode(jsonString);
    return parsedJsonList.map<Movie>((json) => Movie.fromJson(json)).toList();
  }
}
