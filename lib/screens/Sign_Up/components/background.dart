import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget? child;
  const Background({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "android/assets/images/signup_top.png",
                  height: size.height * 0.20,
                )),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "android/assets/images/login_bottom.png",
                height: size.height * 0.20,
              ),
            ),
            child!,
          ],
        ));
  }
}
