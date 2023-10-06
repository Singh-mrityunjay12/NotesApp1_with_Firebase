import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TenthPage10 extends StatefulWidget {
  const TenthPage10({Key? key}) : super(key: key);

  @override
  State<TenthPage10> createState() => _TenthPage10State();
}

class _TenthPage10State extends State<TenthPage10> {
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
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(top: 30, left: 20),
                  child: Icon(Icons.arrow_back_ios_new),
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
                  width: 200,
                  margin: EdgeInsets.only(left: 122, top: 36),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(left: 9, top: 8),
                      child: Center(
                          child: Text(
                        "Ride 1.7 km away",
                        style: TextStyle(fontSize: 20),
                      ))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 190, left: 360),
                  child: Image(
                      height: 50,
                      width: 50,
                      image: AssetImage("images/car1.jpg")),
                ),
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
                    height: 50,
                    width: 300,
                    margin: EdgeInsets.only(top: 730, left: 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 203, 203),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Icon(Icons.chat_bubble_outline,
                            color: Color.fromARGB(255, 97, 96, 96)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Send massage to driver",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 97, 96, 96)),
                        ),
                      ]),
                    )),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(top: 730, left: 340),
                    child: Icon(
                      Icons.local_phone,
                      color: Colors.white,
                      size: 34,
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
