import 'package:flutter/material.dart';
import 'package:techtack/screens/category/category_mobile.dart';

class CategoryCard extends StatelessWidget {
  double height, width;
  String text, imageSrc;
  Color color;
  bool isTrainig;
  String category;

  CategoryCard({
    required this.height,
    required this.width,
    required this.text,
    required this.imageSrc,
    required this.color,
    required this.isTrainig,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return !isTrainig
        ? GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryMobile(category: category,)));
          },
          child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(15)),
                height: height * 0.32,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      SizedBox(
                        height: height * 0.05,
                        child: FittedBox(
                          child: Text(
                            text,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          imageSrc,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        )
        : GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryMobile(category: category)));
          },
          child: Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(15)),
              height: height * 0.32,
              width: width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SizedBox(
                          height: height * 0.05,
                          child: FittedBox(
                            child: Text(
                              text,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        imageSrc,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ),
            ),
        );
  }
}
