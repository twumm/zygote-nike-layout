import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabBarState();
  }
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _tabPages = <Widget>[
      Center(child: Icon(Icons.close, size: 64,),),
      Center(child: Icon(Icons.close, size: 64,),),
      Center(child: Icon(Icons.close, size: 64,),),
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home, size: 32,), title: Text(''),),
      BottomNavigationBarItem(icon: Icon(Icons.person, size: 32,), title: Text('')),
      BottomNavigationBarItem(icon: Icon(Icons.offline_bolt, size: 32,), title: Text('')),
    ];
    // assert(_tabPages.length == _bottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _currentTabIndex,
      backgroundColor: Theme.of(context).primaryColorDark,
      fixedColor: Colors.white,
      unselectedItemColor: Theme.of(context).accentColor,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return bottomNavBar;
  }
}