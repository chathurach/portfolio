import 'package:flutter/material.dart';

import 'package:portfolio/Bodybar/Mainbody.dart';
import 'package:portfolio/TopBar/Topbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Color(0xff3AAFA9),
        primaryColorDark: Color(0xff2B7A78),
        shadowColor: Color(0xff17252A),
        primaryColorLight: Color(0xffDEF2F1),
        accentColor: Color(0xffFEFFFF),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  double scrollPosition = 0.0;
  Widget build(BuildContext context) {
    return Material(
      child: NotificationListener<ScrollNotification>(
        onNotification: onScrolNotification,
        child: Stack(
          children: [
            Positioned(
              top: -0.25 * scrollPosition,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Topbar(),
              ),
            ),
            MouseRegion(
              opaque: false,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                      ),
                      //Bodybar(),
                      //MainBody(),
                      BodySelector(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool onScrolNotification(ScrollNotification Notification) {
    setState(() {
      scrollPosition = Notification.metrics.pixels;
    });
    return true;
  }
}
