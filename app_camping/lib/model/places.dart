import 'package:flutter/material.dart';

class Places {
  final int id;
  final String name;
  final String image;

  Places({@required this.id, @required this.name, @required this.image});
}

List<Places> demoPlaces = [
  Places(
    id: 1,
    name: "Lichnos camp Greece",
    image: 'assets/images/place1.png',
  ),
  Places(
    id: 2,
    name: "Bays of Fire Australia",
    image: 'assets/images/place2.png',
  ),
  Places(
      id: 1,
      name: "Cape Range National Park Auatralia",
      image: 'assets/images/place3.png'),
];
