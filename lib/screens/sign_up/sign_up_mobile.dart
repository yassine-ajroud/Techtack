import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techtack/screens/sign_in/sign_in_mobile.dart';
import 'package:techtack/widgets/gender_box.dart';
import 'package:techtack/widgets/input_field.dart';

class SignUpMobile extends StatefulWidget {
  const SignUpMobile({Key? key}) : super(key: key);

  @override
  State<SignUpMobile> createState() => _SignUpMobileState();
}

class _SignUpMobileState extends State<SignUpMobile> {
  bool agree = false;
  String gender = '';
  String? country;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  //height: 30,
                  width: width * 0.3,
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 48, 248),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                InputForm('User Name', suffix: Icons.person_outline),
                SizedBox(
                  height: height * 0.03,
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
                  height: height * 0.03,
                ),
                InputForm(
                  'Confirm Password',
                  suffix: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  width: width,
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    //height: 30,
                    width: width * 0.15,
                    child: const FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        'gender',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = 'male';
                        });
                      },
                      child: GenderBox(
                        color: gender == 'male'
                            ? Colors.white
                            : Color.fromARGB(255, 101, 48, 248),
                        icon: Icons.male_outlined,
                        bgcolor: gender == 'male'
                            ? Color.fromARGB(255, 101, 48, 248)
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = 'female';
                        });
                      },
                      child: GenderBox(
                        color: gender == 'female'
                            ? Colors.white
                            : Color.fromARGB(255, 101, 48, 248),
                        icon: Icons.female_outlined,
                        bgcolor: gender == 'female'
                            ? Color.fromARGB(255, 101, 48, 248)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 6),
                    child: DropdownButton<String>(
                        underline: Container(),
                        isExpanded: true,
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.location_city),
                        iconEnabledColor: Colors.grey[400],
                        elevation: 2,
                        hint: Text(
                          'City',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        items: [
                          DropdownMenuItem<String>(
                              child: Text('A'), value: 'a'),
                          DropdownMenuItem<String>(
                            child: Text('b'),
                            value: 'b',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('c'),
                            value: 'c',
                          ),
                        ],
                        value: country,
                        onChanged: (val) {
                          setState(() {
                            country = val ?? '';
                          });
                        }),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: agree,
                        onChanged: (b) {
                          setState(() {
                            agree = !agree;
                          });
                        }),
                    Text('Iagree ...',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.pushReplacement(context,
                    //  MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Text('create account'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(width, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInMobile()));
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
        ),
      )),
    );
  }
}
