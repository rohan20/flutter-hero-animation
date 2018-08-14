import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
        body: _displayMoviesGrid(),
      ),
    );
  }

  _displayMoviesGrid() {
    return GridView.count(
      mainAxisSpacing: 4.0,
      childAspectRatio: 2 / 3.2,
      crossAxisCount: 2,
      children: <Widget>[
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
        _createMovieGridItem(),
      ],
    );
  }

  _createMovieGridItem() {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network("http://www.impawards.com/2009/posters/avatar.jpg"),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text("Avatar"),
          ),
        ],
      ),
    );
  }
}
