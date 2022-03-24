import 'package:flutter/material.dart';
import 'package:login_and_signup/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback? press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an account?" : "Already have an account?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up!" : "Sign In!",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
