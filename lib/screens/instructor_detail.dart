import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:app_fitness/constant.dart';
import 'package:app_fitness/model/instructors.dart';
import 'package:app_fitness/screens/fade_in_animation.dart';

class InstructorDetail extends StatelessWidget {
  final Instructor? instructor;
  InstructorDetail({this.instructor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400.0,
                // color: Colors.red[100],
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 60,
                      child: Container(
                        color: Colors.grey[200],
                        child: Column(
                          children: [
                            AppBar(
                              backgroundColor: Colors.grey[200],
                              elevation: 0,
                              leading: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(Icons.arrow_back,
                                    color: kTextColor, size: 30),
                              ),
                              actions: [
                                Icon(
                                  Icons.file_upload,
                                  color: kTextColor,
                                  size: 30,
                                ),
                                SizedBox(width: 18),
                              ],
                            ),
                            FadeIn(
                              delay: 2,
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                // color: Colors.amber,
                                child: Swiper(
                                  itemCount: instructor!.images!.length,
                                  scrollDirection: Axis.horizontal,
                                  pagination: SwiperPagination(),
                                  itemBuilder: (context, index) {
                                    var image = instructor!.images![index];
                                    return Container(
                                      width: 300,
                                      height: 300,
                                      child: Image.asset(
                                        image,
                                        width: 300,
                                        height: 300,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 270,
                      left: 20,
                      right: 20,
                      bottom: 0,
                      child: FadeIn(
                        delay: 3,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      instructor!.name!,
                                      style:
                                          kTitleStyle.copyWith(fontSize: 24.0),
                                    ),
                                    instructor!.isMale!
                                        ? Icon(FontAwesomeIcons.mars,
                                            color: kText2Color)
                                        : Icon(FontAwesomeIcons.venus,
                                            color: kText2Color)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(instructor!.type!, style: kSubtitleStyle),
                                    Text("${instructor!.age!} years old",
                                        style: kSubtitle2Style),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: kPrimaryColor,
                                      size: 20,
                                    ),
                                    SizedBox(width: 12.0),
                                    Text(instructor!.address!,
                                        style: kSubtitle2Style.copyWith(
                                            fontSize: 15.0)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    FadeIn(
                      delay: 4,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(instructor!.userImage!),
                        ),
                        title: Text(instructor!.userName!,
                            style: kTitleStyle.copyWith(fontSize: 16.0)),
                        subtitle: Text("User",
                            style: kSubtitleStyle.copyWith(fontSize: 13.0)),
                        trailing: Text(instructor!.datetime!, style: kSubtitle2Style),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    FadeIn(
                      delay: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text(instructor!.description!, style: kSubtitleStyle),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: FadeIn(
        delay: 6,
        child: Container(
          width: double.infinity,
          height: 120.0,
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 25.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Card(
                  elevation: 6,
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.tag,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                flex: 8,
                child: Card(
                  elevation: 6,
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                      child: Text("Hire",
                          style: kTitleStyle.copyWith(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
