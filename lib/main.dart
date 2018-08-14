import 'package:flutter/material.dart';
import 'package:hero_animation/MoviesGrid.dart';

void main() {
  runApp(MoviesListPage());
}

class MoviesListPage extends StatefulWidget {
  @override
  _MoviesListPageState createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  final String mostPopularMoviesUrl =
      "http://api.themoviedb.org/3/movie/popular?api_key=6e04c90841c8a74483aff18b3eb41cbd&language=en-US&page=2";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Movies List"),
        ),
        body: MoviesGrid(),
      ),
    );
  }
}
