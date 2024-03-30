import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(
            "Homepage",
          style: GoogleFonts.oswald(
            fontSize: 29
          ),
        )),
        backgroundColor: Color.fromRGBO(113, 163, 111, 1),
      ),
    );
  }
}
