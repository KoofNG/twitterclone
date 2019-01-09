import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  @override
  _Likes createState() => _Likes();
}

class _Likes extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.green,
      child: Text(
        'Likes Me',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
