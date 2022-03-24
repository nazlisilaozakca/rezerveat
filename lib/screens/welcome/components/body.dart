import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_and_signup/components/rounded_button.dart';

import 'package:login_and_signup/constants.dart';
import 'package:login_and_signup/screens/Login/login_Screen.dart';
import 'package:login_and_signup/screens/Sign_Up/sign_up_screen.dart';
import 'package:login_and_signup/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Rezerveat'e Hoşgeldin!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SvgPicture.asset(
                  "android/assets/icons/chat.svg",
                  height: size.height * 0.3,
                ),
                SizedBox(height: size.height * 0.07),
                RoundedButton(
                  text: "Login",
                  color: kPrimaryColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                RoundedButton(
                  text: "SignUp",
                  color: kPrimaryLightColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
