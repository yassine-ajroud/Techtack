import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:techtack/widgets/input_field.dart';
import 'package:techtack/widgets/my_course.dart';
import 'package:techtack/widgets/news_item.dart';
import 'package:techtack/widgets/notification_button.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

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
            expandedHeight: height * 0.5,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [NotificationButton(height: height, width: width)],
            ),

            //  collapsedHeight: height * 0.1,
            // floating: true,
            pinned: true,
            //snap: true,
            backgroundColor: Colors.white,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Latest News',
                style: TextStyle(
                  fontSize: 18,
                    color: Color.fromARGB(255, 101, 48, 248),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              background: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  'assets/news_image.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => NewsItem(),
                childCount: 5),
          )
        ],
      )),
    );
  }
}
