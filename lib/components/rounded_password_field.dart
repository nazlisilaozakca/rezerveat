import 'package:flutter/material.dart';

import 'package:login_and_signup/components/text_field_container.dart';
import 'package:login_and_signup/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: passwordVisibility,
        decoration: InputDecoration(
          hintText: "Your Password",
          border: InputBorder.none,
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility,
                color: passwordVisibility
                    ? kPrimaryColor
                    : kPrimaryColor.withOpacity(0.5)),
            onPressed: () {
              passwordVisibility = !passwordVisibility;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
