import 'package:flutter/material.dart';

class MovieDetailsPage extends StatefulWidget {
  final String imageUrl;
  final int index;

  MovieDetailsPage(this.imageUrl, this.index);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Details"),
      ),
      body: Center(
        child: Hero(
          tag: widget.index.toString(),
          child: Container(
            height: 400.0,
            width: 200.0,
            child: Image.network(widget.imageUrl),
          ),
        ),
      ),
    );
  }
}
