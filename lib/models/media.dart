import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  @override
  _Media createState() => _Media();
}

class _Media extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.cyanAccent,
      
      child: Text(
        'Likes Me',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
        ),
      ),);
  }
}
