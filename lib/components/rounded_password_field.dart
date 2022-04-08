import 'package:flutter/material.dart';

import 'package:login_and_signup/components/text_field_container.dart';
import 'package:login_and_signup/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final bool isCorrect;
  final TextEditingController? controller;

  const RoundedPasswordField(
      {Key? key, this.onChanged, this.isCorrect = true, this.controller})
      : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: passwordVisibility,
        decoration: InputDecoration(
          hintText: "Your Password",
          hintStyle: const TextStyle(color: Colors.black),
          icon: const Icon(Icons.lock, color: kPrimaryColor),
          border: InputBorder.none,
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
