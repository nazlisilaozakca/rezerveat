import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_and_signup/components/already_have_an_account_check.dart';

import 'package:login_and_signup/components/rounded_button.dart';
import 'package:login_and_signup/components/rounded_input_field.dart';
import 'package:login_and_signup/components/rounded_password_field.dart';

import 'package:login_and_signup/screens/Sign_Up/components/social_icon.dart';
import 'package:login_and_signup/screens/Sign_Up/or_divider.dart';
import 'package:login_and_signup/screens/Sign_Up/sign_up_screen.dart';
import 'package:login_and_signup/screens/homepage/homepage.dart';
import 'package:login_and_signup/service/auth_service.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          /* const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ), */
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "android/assets/icons/login2.svg",
            height: size.height * 0.30,
          ),
          RoundedInputField(
            controller: _emailController,
            hintText: "Your E-Mail",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
            controller: _passwordController,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              print(_emailController.text);
              _authService
                  .signIn(_emailController.text, _passwordController.text)
                  .then((value) => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())));
            },
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          }),
          const OrDivider(),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialIcon(
                onTap: () {
                  _authService.signInWithGoogle();
                },
                iconSrc: "android/assets/icons/facebook.svg",
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
