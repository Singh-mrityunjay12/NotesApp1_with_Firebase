import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_internsip/otp/homeScreen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({Key? key}) : super(key: key);

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          // Get.arguments['note'].toString()
          "Edit Note")),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: editingController
                ..text = "${Get.arguments['note'].toString()}",
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection('notes')
                      .doc(Get.arguments['docId'].toString())
                      .update({
                    'notes': editingController.text.trim(),
                  }).then((value) {
                    Get.offAll(() => HomeScreen());
                    log("Update Notes");
                  });
                },
                child: Text("Update"))
          ],
        ),
      ),
    );
  }
}
