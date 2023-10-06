import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_internsip/otp/wellcome_screen.dart';
import 'package:flutter_project_internsip/services/signUpservices.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SighUpScreen extends StatefulWidget {
  const SighUpScreen({Key? key}) : super(key: key);

  @override
  State<SighUpScreen> createState() => _SighUpScreenState();
}

class _SighUpScreenState extends State<SighUpScreen> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController userPhonecontroller = TextEditingController();
  TextEditingController userEmailcontroller = TextEditingController();
  TextEditingController userPasscontroller = TextEditingController();
  User? currentUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SignUpScreen"),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    child: Lottie.asset("assets/animation_lmxg1nlc (1).json"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: userNamecontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "UserName",
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: userPhonecontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: "Phone",
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: userEmailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: userPasscontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility),
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var userName = userNamecontroller.text.trim();
                        var userPhone = userPhonecontroller.text.trim();
                        var userEmail = userEmailcontroller.text.trim();
                        var userPass = userPasscontroller.text.trim();
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: userEmail, password: userPass)
                            .then((value) => {
                                  log(
                                    "User Cerated",
                                  ),
                                  signUpUser(
                                      userName, userPhone, userEmail, userPass),
                                  // FirebaseFirestore.instance
                                  //     .collection("users")
                                  //     .doc(currentUser!.uid)
                                  //     .set({
                                  //   'userName': userName,
                                  //   'userPhone': userPhone,
                                  //   'userEmail': userEmail,
                                  //   'userPass': userPass,
                                  //   'createdAt': DateTime.now(),
                                  //   'userId': currentUser!.uid,
                                  // }),
                                });

                        //data store in Firebase datastore
                      },
                      child: Text("SignUp")),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => WellcomeScreen());
                      },
                      child: Container(
                          child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Don't have an Account SignUp"),
                        ),
                      )))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
