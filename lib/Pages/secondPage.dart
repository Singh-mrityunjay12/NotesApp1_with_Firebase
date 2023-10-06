import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage2 extends StatefulWidget {
  const SecondPage2({Key? key}) : super(key: key);

  @override
  State<SecondPage2> createState() => _SecondPage2State();
}

class _SecondPage2State extends State<SecondPage2> {
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
          height: 10,
        ),
        Stack(children: [
          Container(
            height: 620,
            child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('images/roadLocation1.png')),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.only(left: 7, right: 5),
              margin: const EdgeInsets.only(left: 300, top: 10, right: 25),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(7))),
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
                    size: 26,
                    Icons.schedule,
                    color: Color.fromARGB(242, 11, 0, 0),
                  )
                ],
              )),
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(top: 470, left: 340, right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(7))),
            child: Icon(size: 40, Icons.near_me_outlined),
          ),
          Container(
              height: 60,
              width: 370,
              margin: EdgeInsets.only(top: 550, left: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Colors.amber,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Confirm Location",
                    style: TextStyle(fontSize: 20),
                  )))
        ]),
      ])),
    );
  }
}
