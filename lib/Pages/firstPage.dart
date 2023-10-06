import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage1 extends StatefulWidget {
  const FirstPage1({Key? key}) : super(key: key);

  @override
  State<FirstPage1> createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(236, 106, 103, 103)),
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
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(236, 106, 103, 103)),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Stack(children: [
        Container(
          height: 620,
          child: const Image(
              fit: BoxFit.fill, image: AssetImage('images/roadLocation1.png')),
        ),
        Container(
            height: 60,
            padding: const EdgeInsets.only(left: 7, right: 5),
            margin: const EdgeInsets.only(left: 300, top: 10, right: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "New",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.schedule,
                  color: Colors.black87,
                )
              ],
            )),
        Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 239),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.nest_cam_wired_stand_rounded),
                  hintText: "Locate from Map",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  prefixStyle: TextStyle(fontSize: 20),
                  suffixText: "Done",
                  suffixStyle: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black))),
            ))
      ]),
    ])));
  }
}
