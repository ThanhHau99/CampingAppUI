import 'package:app_camping/model/places.dart';
import 'package:flutter/material.dart';

class PlaceCards extends StatelessWidget {
  final Places places;
  const PlaceCards({
    Key key,
    this.places,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 150,
        child: GestureDetector(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  places.image,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 150,
                height: 200,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  places.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white, shadows: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
