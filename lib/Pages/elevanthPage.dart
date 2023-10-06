import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EleventhPage11 extends StatefulWidget {
  const EleventhPage11({Key? key}) : super(key: key);

  @override
  State<EleventhPage11> createState() => _EleventhPage11State();
}

class _EleventhPage11State extends State<EleventhPage11> {
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
                  height: 420,
                  fit: BoxFit.cover,
                  image: AssetImage("images/varanasi.png"),
                ),
                Container(
                  height: 48,
                  width: 48,
                  margin: EdgeInsets.only(top: 293, left: 340, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Icon(size: 40, Icons.near_me_outlined),
                ),
                Container(
                  height: 50,
                  width: 210,
                  margin: EdgeInsets.only(left: 122, top: 36),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(left: 9, top: 8),
                      child: Center(
                          child: Text(
                        "Reaching in 12 min",
                        style: TextStyle(fontSize: 20),
                      ))),
                ),
                Container(
                    height: 230,
                    width: 35,
                    margin: EdgeInsets.only(left: 250, top: 85),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 220, 217, 217)),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RotatedBox(
                            quarterTurns: 1,
                            child: RichText(
                              text: TextSpan(
                                text: 'Durgakund Road',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                                // style: DefaultTextStyle.of(context).style,
                                children: [
                                  WidgetSpan(
                                    child: RotatedBox(
                                      quarterTurns: -1,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 30),
                                        child: Image(
                                            height: 35,
                                            width: 35,
                                            image:
                                                AssetImage("images/car1.jpg")),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Container(
                          //   padding: EdgeInsets.only(right: 7),
                          //   color: Colors.white,
                          //   width: 2,
                          //   height: 100,
                          // ),
                        ])),
                Container(
                    width: 190,
                    height: 50,
                    margin: EdgeInsets.only(top: 293),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromARGB(222, 238, 237, 237),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.ios_share,
                              size: 28,
                            ),
                            Text(
                              "Share Location",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))),
                Container(
                    width: 120,
                    height: 50,
                    margin: EdgeInsets.only(top: 293, left: 210),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromARGB(255, 237, 91, 140),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.sunny_snowing,
                              size: 28,
                            ),
                            Text(
                              "SOS",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ))),
                Container(
                  margin: EdgeInsets.only(top: 373),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 130),
                    child: Container(
                      margin: EdgeInsets.only(top: 400),
                      height: 6,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 163, 162, 162),
                          borderRadius: BorderRadius.circular(8)),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 20, top: 440),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 9),
                          child: Text(
                            "PIN",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 9, left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 223, 220, 220)),
                            height: 45,
                            width: 75,
                            child: Text("2025",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500))),
                        SizedBox(
                          width: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 9),
                          child: Text("Arriving in",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 9, left: 10),
                          height: 45,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 223, 220, 220)),
                          child: Text("5 min",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 490),
                    child: Divider(
                      indent: 11,
                      endIndent: 11,
                      thickness: 1,
                    )),
                Container(
                    margin: EdgeInsets.only(top: 520),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://st4.depositphotos.com/2760050/24301/i/450/depositphotos_243011410-stock-photo-man-with-bristle-on-calm.jpg"),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Abhay Kumar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3.9",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 28,
                                      color: Colors.amber,
                                    )
                                  ],
                                )
                              ]),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image(
                                  height: 52,
                                  width: 100,
                                  image: AssetImage("images/car3.jpg")),
                              Container(
                                margin: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  "Tata Vista",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8, left: 8),
                                height: 35,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 195, 195),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "DL 01 EK 4221",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.only(top: 650),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Passengers",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "3 passenger . Waiting for 1 Others",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 165, 164, 164)),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 720),
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    )),
                Container(
                    height: 50,
                    width: 170,
                    margin: EdgeInsets.only(top: 747, left: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Text(
                          "Payment mode",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    )),
                Container(
                    height: 43,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 228, 181),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(top: 747, left: 290, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Cash",
                          style: TextStyle(fontSize: 18, color: Colors.amber),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 167, 165, 165),
                        )
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 130),
                    child: Container(
                      margin: EdgeInsets.only(top: 830),
                      height: 6,
                      width: 190,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                    )),
              ])),
        ],
      )),
    );
  }
}
