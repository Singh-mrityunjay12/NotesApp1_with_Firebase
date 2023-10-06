import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FourthPage4 extends StatefulWidget {
  const FourthPage4({Key? key}) : super(key: key);

  @override
  State<FourthPage4> createState() => _FourthPage4State();
}

class _FourthPage4State extends State<FourthPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Destination",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
              Container(
                  height: 45,
                  width: 117,
                  // padding: EdgeInsets.all(20),
                  margin: const EdgeInsets.only(right: 13),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Color.fromARGB(136, 163, 152, 152)),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: const [
                        Text("MySelf"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ])))
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                child: const CircleAvatar(
                  radius: 7,
                  backgroundColor: Color.fromARGB(255, 3, 129, 7),
                ),
              ),
              const Text(
                "2225, Ring Road, Pahar Ganj,Delhi,....",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 13),
                child: const CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                ),
              ),
              const Text(
                "2225, Plot No.6, North, Packet 1, Sector 28,...",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        Container(
            margin: EdgeInsets.only(left: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Suggested for you",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 24,
                ),
                Container(
                    margin: EdgeInsets.only(left: 0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color.fromARGB(199, 96, 95, 95),
                              size: 35,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Select Citywalk Mall",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "A-3, Saket District Center,District Center, Sector 6,Pu...",
                                  style: TextStyle(
                                    color: Color.fromARGB(199, 96, 95, 95),
                                  ),
                                )
                              ],
                            )
                          ],
                        ))),
                SizedBox(
                  height: 24,
                ),
                Container(
                    margin: EdgeInsets.only(left: 0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color.fromARGB(199, 96, 95, 95),
                              size: 35,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Select Citywalk Mall",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "A-3, Saket District Center,District Center, Sector 6,Pu...",
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 70, 68, 68)),
                                )
                              ],
                            )
                          ],
                        ))),
                SizedBox(
                  height: 24,
                ),
                Container(
                    margin: EdgeInsets.only(left: 0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color.fromARGB(199, 96, 95, 95),
                              size: 35,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Select Citywalk Mall",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "A-3, Saket District Center,District Center, Sector 6,Pu...",
                                  style: TextStyle(
                                      color: Color.fromARGB(153, 70, 68, 68)),
                                )
                              ],
                            )
                          ],
                        ))),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.nest_cam_wired_stand_rounded),
                          hintText: "Locate from Map",
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                          prefixStyle: TextStyle(fontSize: 20),
                          suffixText: "Done",
                          suffixStyle: TextStyle(
                              color: Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black))),
                    ))
              ],
            ))
      ])),
    );
  }
}
