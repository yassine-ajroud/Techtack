import 'package:flutter/material.dart';
import 'package:techtack/widgets/category_card.dart';
import 'package:techtack/widgets/notification_button.dart';
import 'package:techtack/widgets/input_field.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [NotificationButton(height: height, width: width)],
                ),
                SizedBox(
                  //height: 30,
                  width: width * 0.6,
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Find your favorite',
                      style: TextStyle(
                          color: Colors.black26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                SizedBox(
                  //height: 30,
                  width: width * 0.4,
                  child: const FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    child: Text(
                      'course here!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 48, 248),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                InputForm('Search here...', prefix: Icons.search),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  width: width * 0.25,
                  child: const FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CategoryCard(
                        category: 'Courses',
                          height: height,
                          width: width,
                          text: 'Cours',
                          imageSrc: 'assets/cours.png',
                          color: const Color.fromARGB(255, 101, 48, 248),
                          isTrainig: false),
                    ),
                    SizedBox(
                      width: height * 0.03,
                    ),
                    Expanded(
                      child: CategoryCard(
                        category: 'TD',
                          height: height,
                          width: width,
                          text: 'TD',
                          imageSrc: 'assets/td.png',
                          color: const Color.fromRGBO(26, 35, 126, 1),
                          isTrainig: false),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                CategoryCard(
                  category: 'Trainings',
                    height: height,
                    width: width,
                    text: 'Trainings',
                    imageSrc: 'assets/training.png',
                    color: const Color.fromARGB(255, 53, 66, 252),
                    isTrainig: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
