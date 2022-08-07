import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BlurBox extends StatelessWidget {
  Widget child;
  BlurBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: BackdropFilter(
          //blendMode: BlendMode.softLight,
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: child),
    );
  }
}
