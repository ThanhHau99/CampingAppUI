import 'package:app_camping/constants.dart';
import 'package:app_camping/model/activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivitiesCard extends StatefulWidget {
  final Activity activity;
  const ActivitiesCard({
    Key key,
    this.activity,
  }) : super(key: key);

  @override
  _ActivitiesCardState createState() => _ActivitiesCardState();
}

class _ActivitiesCardState extends State<ActivitiesCard> {
  int selectedActivity = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 100,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedActivity =
                  (selectedActivity == -1) ? widget.activity.id : -1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: kPrimaryColor,
                width: 1,
              ),
              color: selectedActivity == widget.activity.id
                  ? kPrimaryColor
                  : Colors.white,
            ),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Hero(
                    tag: widget.activity.id,
                    child: SvgPicture.asset(
                      widget.activity.icon,
                      color: selectedActivity == widget.activity.id
                          ? Colors.white
                          : kPrimaryColor,
                    ),
                  ),
                ),
                Text(
                  widget.activity.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: selectedActivity == widget.activity.id
                        ? Colors.white
                        : kPrimaryColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
