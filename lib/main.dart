import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techtack/screens/auth/auth_mobile.dart';
import 'package:techtack/screens/home/home_mobile.dart';
import 'package:techtack/screens/my_courses/my_courses_mobile.dart';
import 'package:techtack/screens/news/news_mobile.dart';
import 'package:techtack/screens/profile/profile_mobile.dart';
import 'package:techtack/screens/sign_in/sign_in_mobile.dart';
import 'package:techtack/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  Map<int, Color> colorMap = {};
  @override
  void initState() {
    colorMap = const {
      50: Color.fromRGBO(106, 50, 247, 1),
      100: Color.fromRGBO(106, 50, 247, .2),
      200: Color.fromRGBO(106, 50, 247, .3),
      300: Color.fromRGBO(106, 50, 247, .4),
      400: Color.fromRGBO(106, 50, 247, .5),
      500: Color.fromRGBO(106, 50, 247, .6),
      600: Color.fromRGBO(106, 50, 247, .7),
      700: Color.fromRGBO(106, 50, 247, .8),
      800: Color.fromRGBO(106, 50, 247, .9),
      900: Color.fromRGBO(106, 50, 247, 1),
    };

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF6A32F7, colorMap),
      ),
      home: SplashSceen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  List<Widget> screens = [
    const HomeMobile(),
    const MyCourses(),
    const NewsScreen(),
    const ProfileMobile(),
  ];
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          controller: controller,
          children: screens,
          onPageChanged: (i) {
            setState(() {
              index = i;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          elevation: 10,
          currentIndex: index,
          onTap: (int i) {
            setState(() {
              index = i;
              // controller.jumpToPage(index);
              controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            });
          },
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.deepPurpleAccent[700],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.class_outlined), label: 'Classroom'),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Profile')
          ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
