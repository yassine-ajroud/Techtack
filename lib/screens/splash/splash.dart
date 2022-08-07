import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:techtack/screens/auth/auth_mobile.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({Key? key}) : super(key: key);

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late var colortween;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    colortween = controller.drive(
        ColorTween(begin: Colors.deepPurpleAccent[700], end: Colors.black));
    controller.repeat(reverse: true);

    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>AuthScreen())));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                minHeight: 10,
                valueColor: colortween,
              ),
            ],
          ),
          Positioned(bottom: 0, child: Text('Powred By'))
        ]),
      )),
    );
  }
}
