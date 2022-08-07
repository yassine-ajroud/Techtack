import 'package:flutter/material.dart';
import 'package:techtack/screens/course%20sections/course_section_mobile.dart';
import 'package:techtack/widgets/back_button.dart';
import 'package:techtack/widgets/notification_button.dart';

class CourseDetailsMobile extends StatefulWidget {
  const CourseDetailsMobile({Key? key}) : super(key: key);

  @override
  State<CourseDetailsMobile> createState() => _CourseDetailsMobile();
}

class _CourseDetailsMobile extends State<CourseDetailsMobile> {
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
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                //  collapsedHeight: height * 0.1,
                floating: true,
                pinned: true,
                snap: true,
                backgroundColor: Colors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (() => Navigator.pop(context)),
                              child: BackBtn(
                                height: height,
                                width: width,
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'Details of training',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 101, 48, 248),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            NotificationButton(height: height, width: width)
                          ],
                        ),
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: width,
                            height: height * 0.4,
                            child: Image.network(
                              'https://i0.wp.com/www.claudebueno.com/wp-content/uploads/2022/04/blog-claude-bueno-programmation-flutter-min.jpeg?fit=768%2C512&ssl=1',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Flutter training',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 101, 48, 248)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Trainer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 101, 48, 248)),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: 20,
                                      color: Color.fromARGB(255, 101, 48, 248),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '02:30 h',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  '06-01-2022',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border_outlined,
                              color: Color.fromARGB(255, 101, 48, 248),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '150 person',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                       const Text (
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Container(
                          width: width,
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                               Navigator.push(context,
                               MaterialPageRoute(builder: (context) => CourseSectionsMobile()));
                            },
                            child: Text('Start'),
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(width * 0.45, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}
