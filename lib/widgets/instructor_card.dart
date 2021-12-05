import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_fitness/constant.dart';
import 'package:app_fitness/model/instructors.dart';

class InstructorCard extends StatelessWidget {
  final Instructor? instructor;
  InstructorCard({this.instructor});
  @override
  Widget build(BuildContext context) {
    // RandomColor _randomColor = RandomColor();
    // Color _color = _randomColor.randomColor();
    return Container(
      width: double.infinity,
      height: 200.0,
      // color: Colors.red[100],
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
      child: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 15,
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(170, 10, 10, 10),
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          instructor!.name!,
                          overflow: TextOverflow.ellipsis,
                          style: kTitleStyle,
                        ),
                        instructor!.isMale!
                            ? Icon(
                                FontAwesomeIcons.mars,
                                color: kText2Color,
                              )
                            : Icon(
                                FontAwesomeIcons.venus,
                                color: kText2Color,
                              ),
                      ],
                    ),
                    Text(instructor!.type!, style: kSubtitleStyle),
                    Text("${instructor!.age!} years old", style: kSubtitle2Style),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: kPrimaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Distance: ${instructor!.distance} km",
                          style: kSubtitle2Style,
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 30,
          //   left: 0,
          //   right: 155,
          //   bottom: 0,
          //   child: Card(
          //     elevation: 7,
          //     color: Colors.pink[100],
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(25.0),
          //     ),
          //   ),
          // ),
          Positioned(
            top: 0,
            left: 20,
            right: 160,
            bottom: 30,
            child: Image.asset(
              instructor!.image!,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
