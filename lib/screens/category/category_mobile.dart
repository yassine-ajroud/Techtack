import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:techtack/widgets/back_button.dart';
import 'package:techtack/widgets/course.dart';
import 'package:techtack/widgets/input_field.dart';

class CategoryMobile extends StatelessWidget {
  String category;
  CategoryMobile({Key? key, required this.category}) : super(key: key);

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
              centerTitle: true,
              title: Text(
                category,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 101, 48, 248),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              floating: true,
              snap: true,
              pinned: true,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: (() => Navigator.pop(context)),
                        child: BackBtn(height: height, width: width)),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InputForm('Search here...', prefix: Icons.search),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      'All $category',
                      style: const TextStyle(
                          fontSize: 16,
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
                    ((context, index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Course())),
                    childCount: 20))
          ],
        ),
      ),
    );
  }
}
