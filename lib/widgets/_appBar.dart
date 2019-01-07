import 'package:flutter/material.dart';

class ShowAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  _ShowAppBar createState()=> _ShowAppBar();

  @override  
  Size get preferredSize => null;
}

class _ShowAppBar extends State<ShowAppBar>{
  @override
  Widget build(BuildContext context) {
      return AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0
          ),
        ),
      );
    }
}