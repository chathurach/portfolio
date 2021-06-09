import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cardData {
  late IconData icon;
  late String title;
  late Column body;
}

cardInfo(double fSize, Color fColor) {
  // ignore: deprecated_member_use
  List<cardData> myData = List<cardData>.empty(growable: true);
  var card1 = new cardData();
  card1.icon = FontAwesomeIcons.mugHot;
  card1.title = 'Interests';
  card1.body = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Machine Learning Applications with Tensorflow and YOLO Frameworks',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
      SizedBox(
        height: fSize,
      ),
      Text(
        'Machine Learning-based Android Mobile Applications with Flutter Framework and Dart Language',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
    ],
  );
  myData.add(card1);

  var card2 = new cardData();
  card2.icon = FontAwesomeIcons.graduationCap;
  card2.title = 'Education';
  card2.body = Column(
    //mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'BSc Engineering Specialized in Material Science and Engineering With Grade Point Average of 3.18',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
      SizedBox(
        height: fSize,
      ),
      Text(
        'M.Eng in Highway and Transport Engineering',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
    ],
  );

  myData.add(card2);

  var card3 = new cardData();
  card3.icon = FontAwesomeIcons.microscope;
  card3.title = 'Research';
  card3.body = Column(
    //mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Measument of Road Undulations using Low-cost Accelerometer and Machine Learning',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
      SizedBox(
        height: fSize,
      ),
      Text(
        'Use of Machine Learning to Measur the Road Texture',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: fSize,
          fontWeight: FontWeight.normal,
          color: fColor,
        ),
      ),
    ],
  );

  myData.add(card3);
  return myData;
}
