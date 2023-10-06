import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateHomeScreen extends StatefulWidget {
  const CreateHomeScreen({Key? key}) : super(key: key);

  @override
  State<CreateHomeScreen> createState() => _CreateHomeScreenState();
}

class _CreateHomeScreenState extends State<CreateHomeScreen> {
  TextEditingController addNotesController = TextEditingController();
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Notes"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                controller: addNotesController,
                minLines: null,
                decoration: InputDecoration(hintText: "Add Notes"),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  var note = addNotesController.text.trim();
                  if (note != null) {
                    try {
                      await FirebaseFirestore.instance
                          .collection("notes")
                          .doc()
                          .set({
                        "cratedAt": DateTime.now(),
                        "notes": note,
                        "userId": userId!.uid,
                      });
                    } catch (e) {
                      print("Error $e");
                    }
                  } else {}
                },
                child: Text("Add Notes"))
          ],
        ),
      ),
    );
  }
}
