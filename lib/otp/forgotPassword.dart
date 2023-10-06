import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_internsip/otp/wellcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgotpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
        Container(
            child: Column(children: [
          Container(
            height: 300,
            child: Lottie.asset("assets/animation_lmxg1nlc (1).json"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: forgotpassword,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Forgot Password",
                  enabledBorder: OutlineInputBorder()),
            ),
          ),
        ])),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () async {
              var forgotEmail = forgotpassword.text.trim();
              try {
                await FirebaseAuth.instance
                    .sendPasswordResetEmail(email: forgotEmail)
                    .then((value) => {
                          print("Email Sent!"),
                          Get.off(() => WellcomeScreen())
                        });
              } on FirebaseAuthException catch (e) {
                print("Error$e");
              }
            },
            child: Text("Forgot Password")),
      ]))),
    );
  }
}
