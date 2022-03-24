import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_and_signup/components/already_have_an_account_check.dart';

import 'package:login_and_signup/components/rounded_button.dart';
import 'package:login_and_signup/components/rounded_input_field.dart';
import 'package:login_and_signup/components/rounded_password_field.dart';
import 'package:login_and_signup/components/text_field_container.dart';
import 'package:login_and_signup/constants.dart';
import 'package:login_and_signup/screens/Login/components/background.dart';
import 'package:login_and_signup/screens/Sign_Up/sign_up_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "android/assets/icons/login.svg",
            height: size.height * 0.30,
          ),
          RoundedInputField(
            hintText: "Your E-Mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(onChanged: (value) {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          })
        ]),
      ),
    );
  }
}
