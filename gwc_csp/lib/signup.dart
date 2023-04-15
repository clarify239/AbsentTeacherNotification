import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gwc_csp/home_page.dart';
import 'package:gwc_csp/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController studentID = new TextEditingController();

  Future<void> signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
    ).then((value) async {
      print("Signed up user");
      await FirebaseDatabase.instance.ref().child("Users").child(studentID.text).set({
        "name": nameController.text,
        "id": studentID.text,
      }).then((value) {
        print("Set up profile info");
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
        );
      }).catchError((error) {
        print("could not set up user info " + error.toString());
      });
    }).catchError((error) {
      print("could not set up user info 1 " + error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/new_login_flower.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 135.0, top: 90.0),
                  child: Text(
                    "Signup",
                    style: GoogleFonts.oswald(
                        textStyle: TextStyle(
                          fontSize: 52,
                        )
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 55,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: CupertinoTextField(
                controller: nameController,
                placeholder: "Name",
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
                controller: emailController,
                placeholder: "Email",
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
                controller: passwordController,
                placeholder: "Password",
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
              height: 20,
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
            Container(
              height: 20,
            ),
            Center(
              child: Text(
                  "Already have an account?",
                  style: GoogleFonts.notoSans()
              ),
            ),
            Container(
              height: 10,
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
                  child: Center(child: Text("Login")),
                ),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
