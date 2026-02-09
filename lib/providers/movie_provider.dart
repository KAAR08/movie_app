import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/util/movie_parser.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movies = [];

  List<Movie> get movies => List.unmodifiable(_movies);

  Future<void> loadMovies(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/data/films.json');
      final movies = MovieParser.parse(jsonString);
      _movies = movies;
      notifyListeners();
    } catch (e) {
      print('Error loading movies: $e');
    }
  }

  // List<String>loadMovies(){
  //   // return _movies;
  // }
}
