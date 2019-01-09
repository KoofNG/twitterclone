import 'package:flutter/material.dart';

import 'package:twitter/pages/profileTweets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final _labelCol = Colors.lightBlue;
    final _unLabelCol = Colors.white.withOpacity(0.5);
    int _followers = 1234;
    int _following = 234;

    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.lightBlueAccent,
                elevation: 0.0,
                leading: Container(
                  height: 40.0,
                  width: 40.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => null,
                  ),
                ),
                actions: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    child: IconButton(
                      onPressed: () => null,
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    width: _deviceWidth,
                    height: 100.0,
                    color: Colors.lightBlueAccent,
                  ),
                  Container(
                    height: 70.0,
                    width: _deviceWidth,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border(
                        top: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0),
                      ),
                    ),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          top: -55.0,
                          left: 0.0,
                          child: Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(45.0),
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0,
                                )),
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          child: Container(
                            height: 40.0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(20.0, 20.0)),
                                border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                    style: BorderStyle.solid)),
                            child: FlatButton(
                              onPressed: () => null,
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto-Regular',
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _deviceWidth,
                    color: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.symmetric(vertical: 2.5),
                          child: Text(
                            'Israel Michael Akpan',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 22.0,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.symmetric(vertical: 2.5),
                          child: Text(
                            '@koofng',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            'I am a Computer Engineering Student, with Love for Programmming. | FrontEnd Engineer | Web Developer | Love loving.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.symmetric(vertical: 2.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 1.0, 5.0, 1.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 16.0,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text(
                                        'Ondo, Nigeria',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 1.0, 5.0, 1.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.link,
                                      size: 16.0,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text(
                                        'koofng.github.io',
                                        style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.symmetric(vertical: 2.5),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0.0, 1.0, 5.0, 1.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today,
                                  size: 16.0,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Text(
                                    'Ondo, Nigeria',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: _deviceWidth,
                          padding: EdgeInsets.fromLTRB(0.0, 7.5, 0.0, 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 1.0, 5.0, 1.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: _following.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Following',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(7.5, 1.0, 5.0, 1.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: _followers.toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Followers',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0,
                    ),
                    labelColor: _labelCol,
                    unselectedLabelColor: _unLabelCol,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                      width: 3.0,
                      color: Colors.lightBlue,
                      style: BorderStyle.solid,
                    )),
                    tabs: <Tab>[
                      Tab(
                        child: Text(
                          'Tweets',
                          style: TextStyle(),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Tweets & replies',
                          style: TextStyle(),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Media',
                          style: TextStyle(),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Likes',
                          style: TextStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: ProfileTweets(),
          ),
        ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.blueGrey,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
