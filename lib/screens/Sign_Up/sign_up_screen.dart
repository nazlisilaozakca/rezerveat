import 'package:flutter/material.dart';
import 'package:login_and_signup/screens/Sign_Up/components/background.dart';
import 'package:login_and_signup/screens/Sign_Up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}
