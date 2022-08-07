import 'package:flutter/material.dart';
import 'package:techtack/screens/details/course_details_mobile.dart';

class MyCourseItem extends StatelessWidget {
  double height, width;
  String title, instructor, date, imgUrl;
  MyCourseItem(
      {required this.height,
      required this.width,
      required this.date,
      required this.imgUrl,
      required this.instructor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => CourseDetailsMobile()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10, right: 20, left: 20),
        height: height * 0.2,
        width: width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 0), // changes position of shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Container(
                width: width * 0.3,
                height: height * 0.2,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  instructor,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  date,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
