import 'package:flutter/material.dart';
import 'package:techtack/widgets/my_course.dart';
import 'package:techtack/widgets/notification_button.dart';
import 'package:techtack/widgets/input_field.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;

    List<MyCourseItem> list = [
      MyCourseItem(
          height: height,
          width: width,
          date: '12-06-2022',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTWy8LvHf2YklWjohb6Qo4kN_Xo-Od3GiFy-3N6LDB2nZBJQQFOfDnWANfIhpst93_ito&usqp=CAU',
          instructor: 'Trainer Name',
          title: 'Flutter Course'),
      MyCourseItem(
          height: height,
          width: width,
          date: '02-10-2022',
          imgUrl: 'https://i.ytimg.com/vi/v4KqUpsE_II/maxresdefault.jpg',
          instructor: 'Trainer Name2',
          title: 'Java Course'),
      MyCourseItem(
          height: height,
          width: width,
          date: '22-01-2022',
          imgUrl: 'https://i.ytimg.com/vi/USugYxR2jeQ/maxresdefault.jpg',
          instructor: 'Trainer Name3',
          title: 'Html & Css Course'),
      MyCourseItem(
          height: height,
          width: width,
          date: '24-07-2022',
          imgUrl: 'https://i.ytimg.com/vi/WGJJIrtnfpk/maxresdefault.jpg',
          instructor: 'Trainer Name4',
          title: 'Advanced python Course'),
      MyCourseItem(
          height: height,
          width: width,
          date: '04-07-2022',
          imgUrl:
              'https://downloadfreecourse.com/uploads/images/2020/webp/image_750x_5ec3723659ab5.webp',
          instructor: 'Trainer Name5',
          title: 'Game Development Course'),
      MyCourseItem(
          height: height,
          width: width,
          date: '14-01-2022',
          imgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCEjBW6xqeF1CLZfsgsdDuv6JnQhVEIImYjiy9wDK_VV3zw4GfKi8MizcTxb-yNDin6ds&usqp=CAU',
          instructor: 'Trainer Name6',
          title: 'Adobe Photoshop Course'),
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: width / 2 - width * 0.29),
                              //height: 30,
                              width: width * 0.3,
                              child:const Text(
                                'My Courses',
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
                        InputForm('Search here...', prefix: Icons.search),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        const Text(
                          'All Courses',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 101, 48, 248),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ]),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => list[index],
                    childCount: 6),
              )
            ],
          ),
        ));
  }
}
