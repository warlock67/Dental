//import 'package:beginner/components/already_have_an_account_check.dart';
import 'package:beginner/components/roundedbotton.dart';
import 'package:beginner/screens/components/background.dart';
//import 'package:beginner/screens/const.dart';
import 'package:beginner/screens/login/login.dart';
import 'package:beginner/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:google_fonts/google_fonts.dart";

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.09,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ora ',
                  style: GoogleFonts.sacramento(
                    fontSize: 98,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Care',
                  style: GoogleFonts.bubblegumSans(
                    fontSize: 58,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.5,
            ),
            RoundedButton(
              text: "Login",
              bgcolor: Colors.purple,
              textcolor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SignUp",
              bgcolor: Colors.black,
              textcolor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
