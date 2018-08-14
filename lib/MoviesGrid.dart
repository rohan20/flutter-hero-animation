import 'package:flutter/material.dart';
import 'package:hero_animation/MovieDetailsPage.dart';

class MoviesGrid extends StatefulWidget {
  @override
  _MoviesGridState createState() => _MoviesGridState();
}

class _MoviesGridState extends State<MoviesGrid> {
  @override
  Widget build(BuildContext context) {
    return _displayMoviesGrid();
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
    return Material(
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MovieDetailsPage("http://www.impawards.com/2009/posters/avatar.jpg")),
              );
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Image.network("http://www.impawards.com/2009/posters/avatar.jpg"),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text("Avatar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
