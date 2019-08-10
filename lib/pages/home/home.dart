import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double screenHeight;
  double screenWidth;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Theme.of(context).backgroundColor,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // IconButton(
                //   icon: Icon(Icons.arrow_back),
                //   onPressed: () {},
                // ) 
              ],
            )
          ],
        ),
      ),
    );
  }
}
