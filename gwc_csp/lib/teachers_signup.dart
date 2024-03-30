import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gwc_csp/helper.dart';

import 'home_page.dart';

class TeachersSignup extends StatefulWidget {
  // const TeachersSignup({Key? key, required this.email, required this.name, required this.password, required this.ID}) : super(key: key);
  // final String email;
  // final String name;
  // final String password;
  // final String ID;
  const TeachersSignup({Key? key}) : super(key: key);

  @override
  State<TeachersSignup> createState() => _TeachersSignupState();
}

class _TeachersSignupState extends State<TeachersSignup> {
  TextEditingController period1Teacher = new TextEditingController();
  TextEditingController period2Teacher = new TextEditingController();
  TextEditingController period3Teacher = new TextEditingController();
  TextEditingController period4Teacher = new TextEditingController();
  TextEditingController period5Teacher = new TextEditingController();
  TextEditingController period6Teacher = new TextEditingController();
  TextEditingController period7Teacher = new TextEditingController();
  TextEditingController period8Teacher = new TextEditingController();
  
  List<String> teachers = [];

  Future<void> signup() async {
    addTeachers();
    await FirebaseDatabase.instance.ref().child("Users").child(getUID()).update({
      "teachers": teachers,
    }).then((value) => () {
      print("added teachers");
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }).catchError((error) {
      print("could not add teachers " + error.toString());
    });
  }

  void addTeachers() {
    teachers.add(period1Teacher.text);
    teachers.add(period2Teacher.text);
    teachers.add(period3Teacher.text);
    teachers.add(period4Teacher.text);
    teachers.add(period5Teacher.text);
    teachers.add(period6Teacher.text);
    teachers.add(period7Teacher.text);
    teachers.add(period8Teacher.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Center(
                child: Text("Teachers",
                  style: GoogleFonts.oswald(
                    fontSize: 52
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Enter Your Teachers in Order",
                  style: GoogleFonts.notoSans(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period1Teacher,
                placeholder: "Period 1",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period2Teacher,
                placeholder: "Period 2",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period3Teacher,
                placeholder: "Period 3",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period4Teacher,
                placeholder: "Period 4",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period5Teacher,
                placeholder: "Period 5",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period6Teacher,
                placeholder: "Period 6",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period7Teacher,
                placeholder: "Period 7",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: period8Teacher,
                placeholder: "Period 8",
                placeholderStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(180, 180, 180, 1)
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(150, 150, 150, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: GestureDetector(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 201, 165, 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(child: Text("Signup")),
                ),
                onTap: () async {
                  await signup();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
