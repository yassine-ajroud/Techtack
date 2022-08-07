import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techtack/widgets/back_button.dart';
import 'package:techtack/widgets/comment.dart';
import 'package:techtack/widgets/notification_button.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.68;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Flutter crash course',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 101, 48, 248),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    NotificationButton(height: height, width: width)
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.comment_outlined,
                      color: Color.fromARGB(255, 101, 48, 248),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Write your Comment',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 101, 48, 248)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                    decoration: InputDecoration(
                  suffixIcon: IconButton(
                      disabledColor: Colors.grey,
                      color: Color.fromARGB(255, 101, 48, 248),
                      onPressed: null,
                      icon: const Icon(
                        Icons.send_rounded,
                      )),
                  hintText: 'Comment',
                )),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'All Comments',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 101, 48, 248),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.45,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 2),
                    child: CommentItem(),
                  ),
                  itemCount: 18,
                ),
              )
            ],
          ),
        )));
  }
}
