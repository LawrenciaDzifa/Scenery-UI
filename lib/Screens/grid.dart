import 'package:flutter/material.dart';
import 'package:scenery/Modules/scenery_items.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  final allSites = getAllSites();
  List<Scenery> _allSites;

  @override
  void initState() {
    _allSites = getAllSites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: false,
        itemCount: _allSites.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
        itemBuilder: (BuildContext context, int index){
return Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          child: new Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_allSites[index].image))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30.0),
          child: _allSites[index].icon,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120, left: 30),
          child: Text(
            _allSites[index].siteName,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 30),
          child: Text(
            _allSites[index].spots,
            style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Montserrat',
                fontSize: 13.0,
                fontWeight: FontWeight.w400),
          ),)]
        );}
    );
  }
}



