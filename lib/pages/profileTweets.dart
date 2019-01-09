import 'package:flutter/material.dart';

import 'package:twitter/models/likes.dart' as likes;
import 'package:twitter/models/media.dart' as media;
import 'package:twitter/models/replies.dart' as replies;
import 'package:twitter/models/tweet.dart' as userTweets;

class ProfileTweets extends StatefulWidget {
  @override
  _ProfileTweet createState() => _ProfileTweet();
}

class _ProfileTweet extends State<ProfileTweets> {
  @override
  Widget build(BuildContext context) {
    //final double _deviceWidth = MediaQuery.of(context).size.width;
    return TabBarView(
      children: <Widget>[
        userTweets.UserTweets(),
        replies.UserReplies(),
        media.Media(),
        likes.Likes(),
      ],
    );

    /* return Container(
      width: _deviceWidth,
      padding: EdgeInsets.all(0.0),
      margin: EdgeInsets.all(0.0),
      //height: 450.0,
      color: Colors.deepPurple, 
      child: TabBarView(
        children: <Widget>[
          userTweets.UserTweets(),
          replies.UserReplies(),
          media.Media(),
          likes.Likes(),
        ],
      ),
    ); */
  }
}
