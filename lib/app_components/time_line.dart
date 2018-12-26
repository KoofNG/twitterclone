import 'package:flutter/material.dart';

class MyTwitterTimeLine extends StatefulWidget {
  @override
  _MyTwitterTimeLineState createState() => _MyTwitterTimeLineState();
}

class _MyTwitterTimeLineState extends State<MyTwitterTimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto-Bold',
              fontWeight: FontWeight.w700,
              fontSize: 24.0),
        ),
      ),
      body: getListView(),
    );
  }
}

//Generating a Random List
List<String> getListElements() {
  var items = List<String>.generate(
      500,
      (counter,) =>
          "Tweet000$counter growing rapidly beyond what was expected. Obviously our Social Media Platform is working and making progress. Lets continually achieve more irrespective of the society drawbacks.");
  return items;
}

//Method Describing the List view
Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      final double _deviceWidth = MediaQuery.of(context).size.width;
      bool isIconPressed = true;

      return Container(
        padding: EdgeInsets.all(7.5),
        width: _deviceWidth,
        decoration: BoxDecoration(
          border: Border(
            bottom: Divider.createBorderSide(context, color: Colors.lightBlue),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Container 1
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                    color: Colors.lightBlueAccent,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/koof.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //Container 2
            Expanded(
              child: Container(
                width: _deviceWidth,
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: _deviceWidth,
                      padding: EdgeInsets.fromLTRB(3.5, 2.0, 3.5, 5.0),
                      child: Text(
                        '@User',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto-Light',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Container(
                      width: _deviceWidth,
                      padding: EdgeInsets.fromLTRB(3.5, 3.0, 3.5, 6.0),
                      child: Text(
                        listItems[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    //Container 3
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.5, vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            child: IconButton(
                              onPressed: () => null,
                              icon: Icon(
                                Icons.comment,
                                color: Colors.lightBlueAccent,
                                size: 26.0,
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            child: IconButton(
                              onPressed: () => null,
                              icon: Icon(
                                Icons.send,
                                color: Colors.lightBlueAccent,
                                size: 26.0,
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            child: IconButton(
                              onPressed: () {
                                print('hello');
                                setState(() {
                                  isIconPressed = !isIconPressed;
                                });
                              },
                              icon: isIconPressed
                                  ? Icon(Icons.favorite_border)
                                  : Icon(Icons.favorite),
                                  color: Colors.lightBlueAccent,
                                  iconSize: 26.0,
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 40.0,
                            child: IconButton(
                              onPressed: () => null,
                              icon: Icon(
                                Icons.share,
                                color: Colors.lightBlueAccent,
                                size: 26.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
  return listView;
}

void setState(Null Function() param0) {}
