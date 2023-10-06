import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project_internsip/otp/wellcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

signUpUser(String userName, String userPhone, String userEmail,
    String userPass) async {
  User? userid = FirebaseAuth.instance.currentUser;
  try {
    await FirebaseFirestore.instance.collection("users").doc(userid!.uid).set({
      'userName': userName,
      'userPhone': userPhone,
      'userEmail': userEmail,
      'userPass': userPass,
      'createdAt': DateTime.now(),
      'userId': userid.uid,
    }).then((value) => {
          FirebaseAuth.instance.signOut(),
          Get.to(() => WellcomeScreen()),
        });
  } on FirebaseAuthException catch (e) {
    print("Error$e");
  }
}
