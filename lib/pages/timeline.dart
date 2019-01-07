import 'package:flutter/material.dart';

import 'package:twitter/widgets/_drawer.dart';
import 'package:twitter/widgets/_tweets.dart';

class Timeline extends StatefulWidget {
  @override
  _Timeline createState() => _Timeline();
}

class _Timeline extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ShowDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
      ),
      body: TweetsPage(),
    );
  }
}
