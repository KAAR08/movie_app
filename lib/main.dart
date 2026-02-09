import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/movie_details.dart';
import 'package:movie_app/providers/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => MovieProvider(),
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<MovieProvider>(context, listen: false).loadMovies(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final movieList = Provider.of<MovieProvider>(context).movies;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              final movie = movieList[index];
              return MovieCard(movie: movie);
            }),
      ),
    );
  }
}

