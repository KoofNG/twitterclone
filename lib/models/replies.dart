import 'package:flutter/material.dart';

class UserReplies extends StatefulWidget {
  @override
  _UserReplies createState() => _UserReplies();
}

class _UserReplies extends State<UserReplies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.yellowAccent,
      
      child: Text(
        'Likes Me',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
        ),
      ),);
  }
}
