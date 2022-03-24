// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/components/already_have_an_account_check.dart';
import 'package:login_and_signup/components/rounded_button.dart';
import 'package:login_and_signup/components/rounded_input_field.dart';
import 'package:login_and_signup/components/rounded_password_field.dart';
import 'package:login_and_signup/constants.dart';
import 'package:login_and_signup/screens/Login/login_Screen.dart';
import 'package:login_and_signup/screens/Sign_Up/components/background.dart';
import 'package:login_and_signup/screens/Sign_Up/components/social_icon.dart';
import 'package:login_and_signup/screens/Sign_Up/or_divider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
        children: [
          const Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SvgPicture.asset("android/assets/icons/signup.svg"),
          const RoundedInputField(
            hintText: "Your E-mail",
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedButton(
            text: "Sign Up",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          OrDivider(),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialIcon(
                iconSrc: "android/assets/icons/facebook.svg",
              ),
              SocialIcon(
                iconSrc: "android/assets/icons/twitter.svg",
              ),
              SocialIcon(
                iconSrc: "android/assets/icons/google-plus.svg",
              )
            ],
          ),
        ],
      )),
    );
  }
}
