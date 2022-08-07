import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:techtack/widgets/special_button.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SpecialButton(
                    height: height,
                    width: width,
                    icon: Icons.edit,
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: width * 0.35,
                  height: height * 0.25,
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit photo',
                    style: TextStyle(
                        color: Colors.grey[400], fontWeight: FontWeight.bold),
                  )),
              TextFormField(
                enabled: false,
                initialValue: 'Yassine',
                decoration: InputDecoration(label: Text('FirstName')),
              ),
              TextFormField(
                enabled: false,
                initialValue: 'Ajroud',
                decoration: InputDecoration(label: Text('LastName')),
              ),
              TextFormField(
                enabled: false,
                initialValue: 'ajroudyassine06@gmail.com',
                decoration: InputDecoration(label: Text('Adresse')),
              ),
              TextFormField(
                enabled: false,
                initialValue: 'Man',
                decoration: InputDecoration(label: Text('Gender')),
              ),
              TextFormField(
                enabled: false,
                initialValue: '30-12-2002',
                decoration: InputDecoration(label: Text('BirthDate')),
              ),
              TextFormField(
                enabled: false,
                initialValue: 'Sousse',
                decoration: InputDecoration(label: Text('City')),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Opacity(
                opacity: 0.0,
                child: ElevatedButton(
                  onPressed: null,
                  child: const Text('Save'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.45, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
