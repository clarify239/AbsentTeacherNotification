import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gwc_csp/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                padding: const EdgeInsets.only(left: 150.0, top: 125.0),
                child: Text(
                  "Login",
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
            height: 65,
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
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
            height: 65,
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
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
                child: Center(child: Text("Login")),
              ),
              onTap: (){},
            ),
          ),
          Container(
            height: 20,
          ),
          Center(
              child: Text(
                "Don't have an account?",
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
                child: Center(child: Text("Signup")),
              ),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => Signup(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
