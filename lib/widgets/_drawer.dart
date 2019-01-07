import 'package:flutter/material.dart';

import 'package:twitter/pages/profile.dart';

class ShowDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          shape: BoxShape.rectangle,
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1.0,
                style: BorderStyle.solid,
                color: Colors.grey,
              ))),
              child: Container(
                padding: EdgeInsets.all(9.0),
                width: _deviceWidth,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 70.0,
                      height: 70.0,
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/koof.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      width: _deviceWidth,
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                      child: GestureDetector(
                        onTap: (){
                          print('We good!');
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                        },
                        child: Text(
                          'Israel Michael Akpan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 1.0),
                      child: Text(
                        '@KoofNG',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
