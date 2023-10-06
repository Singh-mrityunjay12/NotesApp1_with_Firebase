import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_internsip/otp/crteateNoteScreen.dart';
import 'package:flutter_project_internsip/otp/editNoteScreen.dart';
import 'package:flutter_project_internsip/otp/wellcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Get.off(() => WellcomeScreen());
            },
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("notes")
                .where("userId", isEqualTo: userId?.uid)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshopt) {
              if (snapshopt.hasError) {
                return Text("Resolve this Error");
              }
              if (snapshopt.connectionState ==
                  ConnectionState
                      .waiting) //yadi hamari query load nahi huyi h puri tarah to ham CupertinoActivityIndicator() chala dete h
              {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (snapshopt.data!.docs.isEmpty) {
                return Text("No data");
              }
              if (snapshopt != null && snapshopt.data != null) {
                return ListView.builder(
                    itemCount: snapshopt.data!.docs.length,
                    itemBuilder: (context, index) {
                      var note = snapshopt.data!.docs[index]['notes'];
                      var noteId = snapshopt.data!.docs[index]['userId'];
                      var docId = snapshopt.data!.docs[index].id;
                      return Container(
                        child: Card(
                            child: ListTile(
                          title: Text(note),
                          // Text(snapshopt.data!.docs[index]['notes']),
                          subtitle: Text(snapshopt.data!.docs[index]['userId']),
                          leading:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => EditNoteScreen(),
                                    arguments: {'note': note, 'docId': docId});
                                print(note);
                              },
                              child: Icon(Icons.edit),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                                onTap: () async {
                                  await FirebaseFirestore.instance
                                      .collection('notes')
                                      .doc(docId)
                                      .delete();
                                },
                                child: Icon(Icons.delete))
                          ]),
                        )),
                      );
                    });
              } else {
                return Center(
                  child: CupertinoActivityIndicator(),
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => CreateHomeScreen());
          },
          child: Icon(Icons.add)),
    );
  }
}
