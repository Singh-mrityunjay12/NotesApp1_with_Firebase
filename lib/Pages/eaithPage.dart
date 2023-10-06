import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EaithPage8 extends StatefulWidget {
  const EaithPage8({Key? key}) : super(key: key);

  @override
  State<EaithPage8> createState() => _EaithPage8State();
}

class _EaithPage8State extends State<EaithPage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(left: 7),
              // height: 800,
              child: Stack(children: [
                Image(
                  width: 400,
                  height: 360,
                  fit: BoxFit.cover,
                  image: AssetImage("images/varanasi.png"),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(top: 30, left: 20),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 300, left: 340, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Icon(size: 40, Icons.near_me_outlined),
                ),
              ])),
          Container(
              // margin: EdgeInsets.only(bottom: 150),
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Divider(
                  color: Colors.black,
                  height: 25,
                  thickness: 5,
                  indent: 90,
                  endIndent: 90,
                ),
              )),
          Container(
              child: Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                      // margin: EdgeInsets.only(top: 14),
                      height: 110,
                      color: Colors.lime,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              // color: Color.fromARGB(139, 224, 171, 11),
                              margin: EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                radius: 37,
                                backgroundImage: NetworkImage(
                                    "https://e0.pxfuel.com/wallpapers/83/236/desktop-wallpaper-virat-kohli-virat-kohli-hairstyle-virat-kohli-beard-virat-kohli-men-hair-style-thumbnail.jpg"),
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Ashok Kumar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "3.9",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 28,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Maruti Swift",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color:
                                            Color.fromRGBO(165, 161, 161, 1))),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.schedule_outlined,
                                        size: 28,
                                        color:
                                            Color.fromRGBO(165, 161, 161, 1)),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "5 min",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color:
                                              Color.fromRGBO(165, 161, 161, 1)),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(Icons.group_outlined,
                                        size: 28,
                                        color:
                                            Color.fromRGBO(165, 161, 161, 1)),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "1 Seat available",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color:
                                              Color.fromRGBO(165, 161, 161, 1)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 27, right: 13),
                              child: Text(
                                "R257",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ))
                        ],
                      ))),
              // SizedBox(
              //   height: 7,
              // ),
              const Divider(
                color: Color.fromARGB(255, 114, 113, 113),
                height: 2,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 16),
                            child: CircleAvatar(
                              radius: 37,
                              backgroundImage: NetworkImage(
                                  "https://st4.depositphotos.com/2760050/24301/i/450/depositphotos_243011410-stock-photo-man-with-bristle-on-calm.jpg"),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Abhay Kumar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "3.9",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    size: 28,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Maruti Swift",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Color.fromRGBO(165, 161, 161, 1))),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.schedule_outlined,
                                      size: 28,
                                      color: Color.fromRGBO(165, 161, 161, 1)),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "8 min",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color:
                                            Color.fromRGBO(165, 161, 161, 1)),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Icon(Icons.group_outlined,
                                      size: 28,
                                      color: Color.fromRGBO(165, 161, 161, 1)),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "2 Seat available",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color:
                                            Color.fromRGBO(165, 161, 161, 1)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 27, right: 13),
                            child: Text(
                              "R258",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ))
                      ],
                    )),
              ),
              const Divider(
                color: Colors.amber,
                height: 25,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ),
              Container(
                  child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.money,
                    size: 30,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Cash",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Icon(Icons.arrow_forward_ios,
                      color: Color.fromRGBO(165, 161, 161, 1))
                ],
              )),
              SizedBox(
                height: 2,
              ),
              const Divider(
                color: Colors.amber,
                height: 25,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ),
              Container(
                  child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.amber),
                    child: Icon(
                      Icons.percent,
                      size: 30,
                      color: Color.fromARGB(255, 138, 136, 136),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Apply Coupon",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 142,
                  ),
                  Icon(Icons.arrow_forward_ios,
                      color: Color.fromRGBO(165, 161, 161, 1))
                ],
              )),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 60,
                  width: 380,
                  // margin: EdgeInsets.only(top: 550, left: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: Color.fromARGB(255, 221, 167, 5),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Select Ride",
                        style: TextStyle(fontSize: 20),
                      )))
            ],
          ))
        ],
      )),
    );
  }
}
