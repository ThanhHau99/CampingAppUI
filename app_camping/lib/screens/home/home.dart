import 'package:app_camping/constants.dart';
import 'package:app_camping/model/activity.dart';
import 'package:app_camping/model/places.dart';
import 'package:app_camping/screens/home/components/activities.dart';
import 'package:app_camping/screens/home/components/place_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/main1.svg',
                          width: size.width,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: size.height * 0.4),
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Activities you love",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  demoActivities.length,
                                  (index) {
                                    return ActivitiesCard(
                                      activity: demoActivities[index],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Recommended Places',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(demoPlaces.length, (index) {
                                  return PlaceCards(
                                    places: demoPlaces[index],
                                  );
                                })
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              color: Color(0XFFF5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create New Place',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0XFF5A5A5A),
                                      ),
                                    ),
                                    Text(
                                      'Create camping with your Friends',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0XFF5A5A5A),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: IconButton(
                                    icon: SvgPicture.asset(
                                        'assets/icons/new.svg'),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
