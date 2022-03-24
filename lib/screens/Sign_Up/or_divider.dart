import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("OR", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        height: 1.5,
        color: Color(0XFFD9D9D9),
      ),
    );
  }
}
