import 'package:flutter/material.dart';
import 'package:scenery/Screens/activity.dart';
import 'package:scenery/Screens/grid.dart';
import 'package:scenery/Screens/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [Home(), Activities(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/overlay2.png',
              ),
              fit: BoxFit.cover)),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            elevation: 5.0,
            centerTitle: true,
            backgroundColor: Colors.black87,
            title: Center(
                child: Text(
              'Explore',
              style: TextStyle(color: Colors.white60, fontSize: 21.0),
            )),
            leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.white60),
                onPressed: () {}),
            actions: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white60,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.search_outlined,
                        color: Colors.white60,
                      ),
                      onPressed: () {})
                ],
              ),
            ],
            // bottom: TabBar(
            //   indicatorColor: Colors.pink,
            //   indicatorSize: TabBarIndicatorSize.tab,
            //   indicatorPadding: EdgeInsets.only(left: 20.0, right: 20.0),
            //   indicatorWeight: 3.5,
            //   tabs: [
            //     Tab(
            //       child: Text(
            //         'DISCOVER',
            //         style: TextStyle(
            //             color: Colors.white60,
            //             fontFamily: 'Montserrat',
            //             fontWeight: FontWeight.w600),
            //       ),
            //     ),
            //     Tab(
            //       child: Text(
            //         'ACTIVITIES',
            //         style: TextStyle(
            //             color: Colors.white60,
            //             fontFamily: 'Montserrat',
            //             fontWeight: FontWeight.w600),
            //       ),
            //     ),
            //   ],
            //   labelColor: Colors.pink,
            // ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              backgroundColor: Colors.black87,
              unselectedFontSize: 14,
              selectedItemColor: Colors.pink,
              unselectedItemColor: Colors.grey,
              currentIndex: currentIndex,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'SETTINGS',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'PROFILE',
                ),
              ]),
          body: Grid(),
        ),
      ),
    );
  }
}
