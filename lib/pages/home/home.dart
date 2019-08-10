import 'package:flutter/material.dart';
import 'package:Zygote_Nike_Layout/widgets/bottomNavBar.dart';

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

    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).cursorColor,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'Discover',
                    style: Theme.of(
                      context,
                    ).textTheme.display1.copyWith(
                          color: Theme.of(
                            context,
                          ).cursorColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Container(
                    width: screenWidth / 11,
                    height: screenWidth / 11,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context).cursorColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomTabBar(),
    );
  }
}
