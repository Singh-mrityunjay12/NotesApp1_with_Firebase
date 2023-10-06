import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_internsip/otp/forgotPassword.dart';
import 'package:flutter_project_internsip/otp/homeScreen.dart';
import 'package:flutter_project_internsip/otp/signupScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  TextEditingController loginEmailcontroller = TextEditingController();
  TextEditingController loginPasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Note App")),
          actions: [Icon(Icons.more_vert)],
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
                        controller: loginEmailcontroller,
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
                        controller: loginPasscontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.visibility),
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          var loginEmail = loginEmailcontroller.text.trim();
                          var loginPass = loginPasscontroller.text.trim();
                          try {
                            User? fierbaseuser = (await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: loginEmail, password: loginPass))
                                .user;
                            if (fierbaseuser != null) {
                              Get.snackbar(
                                  "Successfully signIn with email and password",
                                  "login with email and password ",
                                  backgroundColor: Colors.teal,
                                  colorText: Colors.white,
                                  snackPosition: SnackPosition.BOTTOM);
                              Get.to(() => HomeScreen());
                            } else {
                              Get.snackbar("Error",
                                  "Cheak with right password and email",
                                  backgroundColor: Colors.teal,
                                  colorText: Colors.white,
                                  snackPosition: SnackPosition.BOTTOM);
                            }
                          } on FirebaseException catch (e) {
                            Get.snackbar("Error",
                                "login with right password and email $e",
                                backgroundColor: Colors.teal,
                                colorText: Colors.white,
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                        child: Text("Login")),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => ForgotPassword());
                        },
                        child: Container(
                            child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("Forgot Password"),
                          ),
                        ))),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => SighUpScreen());
                        },
                        child: Container(
                            child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("Allready have an account SignUp"),
                          ),
                        )))
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
