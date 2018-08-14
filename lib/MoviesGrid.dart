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
        _createMovieGridItem(0),
        _createMovieGridItem(1),
        _createMovieGridItem(2),
        _createMovieGridItem(3),
        _createMovieGridItem(4),
        _createMovieGridItem(5),
        _createMovieGridItem(6),
        _createMovieGridItem(7),
        _createMovieGridItem(8),
        _createMovieGridItem(9),
      ],
    );
  }

  _createMovieGridItem(int index) {
    return Material(
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MovieDetailsPage("http://www.impawards.com/2009/posters/avatar.jpg", index)),
              );
        },
        child: Hero(
          tag: index.toString(),
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
      ),
    );
  }
}
