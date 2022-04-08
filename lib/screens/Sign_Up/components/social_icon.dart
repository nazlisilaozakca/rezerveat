import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(20),
            height: size.height * 0.07,
            width: size.width * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kPrimaryLightColor),
            child: SvgPicture.asset(
              iconSrc,
              width: 5,
              height: 5,
            ),
          ),
        ),
      ],
    );
  }
}
