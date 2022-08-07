import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  double height, width;
  String image;
  Color bgcolor;

  SocialButton({
    required this.height,
    required this.width,
    required this.image,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: width * 0.11,
        height: width * 0.11,
        // ignore: sort_child_properties_last
        child: SizedBox(
          width: width * 0.06,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(12),
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
