// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:login_and_signup/components/already_have_an_account_check.dart';
import 'package:login_and_signup/components/gender_select_menu.dart';

import 'package:login_and_signup/components/rounded_button.dart';
import 'package:login_and_signup/components/rounded_input_field.dart';

import 'package:login_and_signup/components/rounded_password_field.dart';

import 'package:login_and_signup/screens/Login/login_Screen.dart';
import 'package:login_and_signup/service/auth_service.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  AuthService _authService = AuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordCheckController = TextEditingController();
  TextEditingController _mobileNoController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    /* _emailController = TextEditingController();

    _passwordController = TextEditingController();
    _mobileNoController = TextEditingController();
    _usernameController = TextEditingController(); */
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            /* const Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
            ), */
            SizedBox(
              height: size.height * 0.01,
            ),
            /*  SvgPicture.asset(
              "android/assets/icons/signup2.svg",
              height: size.height * 0.4,
              width: size.width * 0.5,
            ), */
            RoundedInputField(
              controller: _usernameController,
              hintText: "Your Username",
              icon: Icons.account_circle,
            ),
            RoundedInputField(
              controller: _emailController,
              hintText: "Your E-mail",
              icon: Icons.alternate_email,
            ),
            RoundedPasswordField(
              controller: _passwordController,
              isCorrect: true,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: _passwordCheckController,
              isCorrect: false,
              onChanged: (value) {},
            ),
            RoundedInputField(
              controller: _mobileNoController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              hintText: 'Your Telephone Number',
              icon: Icons.local_phone,
            ),
            //SelectGenderMenu(),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {
                print(_emailController.text);
                print(_passwordController.text);
                print(_usernameController.text);
                print(_mobileNoController.text);
                _authService
                    .createPerson(
                  _usernameController.text,
                  _emailController.text,
                  _passwordController.text,
                  _mobileNoController.text,
                )
                    .then((value) {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                });
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        )),
      ),
    );
  }
}
