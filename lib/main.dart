import 'package:flutter/material.dart';

import 'package:twitter/pages/timeline.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override  
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Twitter',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,         
        ),
        home: Timeline(),
      );
    }
}
