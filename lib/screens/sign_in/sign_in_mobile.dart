import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:techtack/main.dart';
import 'package:techtack/screens/sign_up/sign_up_mobile.dart';
import 'package:techtack/widgets/input_field.dart';
import 'package:techtack/widgets/social_button.dart';

class SignInMobile extends StatefulWidget {
  const SignInMobile({Key? key}) : super(key: key);

  @override
  State<SignInMobile> createState() => _SignInMobileState();
}

class _SignInMobileState extends State<SignInMobile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  //height: 30,
                  width: width * 0.6,
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Colors.black26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  //height: 30,
                  width: width * 0.2,
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 48, 248),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                InputForm(
                  'Adress Mail',
                  suffix: Icons.email_outlined,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                InputForm(
                  'Password',
                  suffix: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width,
                  alignment: Alignment.centerRight,
                  child: Text(
                    'forget password?',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 101, 48, 248),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('Sign IN'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.45, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  'or',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      height: height,
                      width: width,
                      image: 'assets/facebook_icon.png',
                      bgcolor: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    SocialButton(
                      height: height,
                      width: width,
                      image: 'assets/google_icon.png',
                      bgcolor: Color.fromARGB(255, 101, 48, 248),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    SocialButton(
                      height: height,
                      width: width,
                      image: 'assets/twitter_icon.png',
                      bgcolor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New User? ',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpMobile()));
                      },
                      child: Text('Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 101, 48, 248),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
