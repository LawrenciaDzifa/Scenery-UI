import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:scenery/Screens/grid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                  style: TextStyle(color: Colors.white24, fontSize: 21.0),
                )),
                leading: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white24),
                    onPressed: () {}),
                actions: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white24,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.search_outlined,
                            color: Colors.white24,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ],
                bottom: TabBar(
                  indicatorColor: Colors.pink,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.only(left: 20.0, right: 20.0),
                  indicatorWeight: 3.5,
                  tabs: [
                    Tab(
                      child: Text(
                        'DISCOVER',
                        style: TextStyle(
                            color: Colors.white24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'ACTIVITIES',
                        style: TextStyle(
                            color: Colors.white24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                  labelColor: Colors.pink,
                )),
            bottomNavigationBar: BottomNavyBar(
              backgroundColor: Colors.black,
              selectedIndex: _currentIndex,
              showElevation: true,
              itemCornerRadius: 18.0,
              curve: Curves.easeIn,
              onItemSelected: (index) => setState(() => _currentIndex = index),
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.white24),
                  title: Text('Home'),
                  activeColor: Colors.pink.shade300,
                  inactiveColor: Colors.transparent,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.place_outlined, color: Colors.white24),
                  title: Text('Places'),
                  activeColor: Colors.pink.shade300,
                  inactiveColor: Colors.transparent,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.message_outlined,color: Colors.white24),
                  title: Text(
                    'Forum',
                  ),
                  activeColor: Colors.pink.shade300,
                  inactiveColor: Colors.transparent,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.person_outlined, color: Colors.white24),
                  title: Text('Account'),
                  activeColor: Colors.pink.shade300,
                  inactiveColor: Colors.green,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            body: Grid(),
            ),
      ),
    );
  }
}
