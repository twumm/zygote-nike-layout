import 'package:Zygote_Nike_Layout/widgets/actionIconCard.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.fromLTRB(screenWidth / 30, 0, screenWidth / 10, 0,),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).cursorColor,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Discover',
                        style: Theme.of(
                          context
                        ).textTheme.display1.copyWith(
                              color: Theme.of(
                                context,
                              ).cursorColor,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      actionIconCard(
                        context,
                        screenWidth / 11,
                        screenWidth / 11,
                        Theme.of(context).primaryColorLight,
                        BorderRadius.all(Radius.circular(5)),
                        Icons.search,
                        Theme.of(context).cursorColor,
                      ),
                      actionIconCard(
                        context,
                        screenWidth / 11,
                        screenWidth / 11,
                        Theme.of(context).primaryColorLight,
                        BorderRadius.all(Radius.circular(5)),
                        Icons.notifications_none,
                        Theme.of(context).cursorColor,
                      ),
                    ],
                  ),
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
