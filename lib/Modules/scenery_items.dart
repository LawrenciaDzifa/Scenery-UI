import 'package:flutter/material.dart';

int siteNumber = 0;
var siteBank;

class Scenery {
  String siteName;
  String image;
  Widget icon;
  String spots;

  Scenery({this.siteName, this.image, this.icon, this.spots});
}

List<Scenery> getAllSites() => [
      Scenery(
          siteName: 'Nature\'s Light',
          image: 'assets/images/gridpic1.png',
          icon: Icon(
            Icons.location_city_outlined,
            color: Colors.white,
          ),
          spots: '450 SPOTS'),
      Scenery(
          siteName: 'Culture',
          image: 'assets/images/gridpic2.png',
          icon: Icon(
            Icons.people_outlined,
            color: Colors.white,
          ),
          spots: '150 SPOTS'),
      Scenery(
          siteName: 'Mordern Life',
          image: 'assets/images/gridpic3.png',
          icon: Icon(
            Icons.filter_vintage_outlined,
            color: Colors.white,
          ),
          spots: '100 SPOTS'),
      Scenery(
          siteName: 'Popularity',
          image: 'assets/images/gridpic4.png',
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.white,
          ),
          spots: '310 SPOTS'),
      Scenery(
          siteName: 'Sun & Sand',
          image: 'assets/images/gridpic5.png',
          icon: Icon(Icons.brightness_high_outlined, color: Colors.white),
          spots: '110 SPOTS'),
      Scenery(
          siteName: 'Adventure',
          image: 'assets/images/gridpic6.png',
          icon: Icon(
            Icons.rowing_outlined,
            color: Colors.white,
          ),
          spots: '98 SPOTS'),
    ];

getSiteName(siteNumber) {
  return siteBank[siteNumber].siteName;
}

getSiteImage(siteNumber) {
  return siteBank[siteNumber].image;
}

getSiteIcon(siteNumber) {
  return siteBank[siteNumber].icon;
}

getSiteSpots(siteNumber) {
  return siteBank[siteNumber].spots;
}
