import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:techtack/screens/video/video_mobile.dart';
import 'package:techtack/widgets/back_button.dart';
import 'package:techtack/widgets/notification_button.dart';

class CourseSectionsMobile extends StatelessWidget {
  const CourseSectionsMobile({Key? key}) : super(key: key);

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
                            'Course sections',
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
                  const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Text(
                    'Start Now',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 101, 48, 248),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                               Navigator.push(context,
                               MaterialPageRoute(builder: (context) => VideoScreen()));
                            },
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Color.fromARGB(255, 101, 48, 248),
                        width: width * 0.2,
                        height: height * 0.5,
                        child:const Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(
                      'video number ${index + 1}',
                      style:const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 101, 48, 248),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: const [
                        Icon(
                          Icons.access_time_outlined,
                          size: 16,
                          color: Color.fromARGB(255, 101, 48, 248),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '00:35 h',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ))
        ],
      )),
    );
  }
}
