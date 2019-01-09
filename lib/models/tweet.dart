import 'package:flutter/material.dart';

import 'package:twitter/widgets/_tweets.dart';

class UserTweets extends StatefulWidget {
  @override
  _UserTweets createState() => _UserTweets();
}

class _UserTweets extends State<UserTweets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TweetsPage(),
    );
  }
}
