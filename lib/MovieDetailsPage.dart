import 'package:flutter/material.dart';

class MovieDetailsPage extends StatefulWidget {
  final String imageUrl;

  MovieDetailsPage(this.imageUrl);

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
        child: Container(
          height: 400.0,
          width: 400.0,
          child: Image.network(widget.imageUrl),
        ),
      ),
    );
  }
}
