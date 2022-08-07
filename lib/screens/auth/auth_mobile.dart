import 'package:flutter/material.dart';
import 'package:techtack/screens/sign_in/sign_in_mobile.dart';
import 'package:techtack/screens/sign_up/sign_up_mobile.dart';
import 'package:techtack/widgets/Custom_clipper.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              height: height * 0.4,
              child: Image.asset(
                'assets/auth_image.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => SignInMobile()));
              },
              child: Text('Sign IN'),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 0.6, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpMobile()));
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 0.6, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            InkWell(
              onTap: () {
                //Navigator.pushReplacement(
                //context,
                // MaterialPageRoute(
                //builder: (context) => SignInMobile()));
              },
              child: Text('Cancel',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }
}
