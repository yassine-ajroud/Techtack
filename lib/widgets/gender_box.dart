import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenderBox extends StatelessWidget {
  IconData icon;
  Color color, bgcolor;

  GenderBox({required this.color, required this.icon, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.height * 0.17,
      child: Icon(
        icon,
        size: 70,
        color: color,
      ),
      decoration: BoxDecoration(
          color: bgcolor,
          // border: Border.all(width: 2, color: color),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 0), // changes position of shadow
            )
          ]),
    );
  }
}
