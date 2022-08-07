import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  double height, width;
  IconData icon;

  SpecialButton({required this.height, required this.width,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width * 0.09,
        height: width * 0.09,
        // ignore: sort_child_properties_last
        child:  Icon(
          icon,
          color: Colors.grey,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 0), // changes position of shadow
              )
            ]));
  }
}
