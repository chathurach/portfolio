import 'package:flutter/material.dart';
import 'package:portfolio/Data/data.dart';
import 'package:portfolio/TopBar/navigationBar.dart';
import 'cardModel.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: _width,
          height: _heigth,
          color: Theme.of(context).primaryColorLight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Graduated with BSc in Engineering',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context).primaryColorDark,
                      //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  Text(
                    'Second Class Lower Division in 2014',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context).primaryColorDark,
                      //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  Text(
                    'Recently Completed the MSc in',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context).primaryColorDark,
                      //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  Text(
                    'Highway and Traffic Engineering',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context)
                          .primaryColorDark, //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                ],
              ),
              cardModel(
                data: cardInfo(
                    _width * 0.02, Theme.of(context).primaryColorLight)[1],
                cardWidth: _width * 0.3,
                cardHeight: _heigth * 0.7,
                colorOne: Theme.of(context).primaryColorLight,
                colorTwo: Theme.of(context).primaryColorDark,
              ),
            ],
          ),
        ),
        Container(
          width: _width,
          height: _heigth,
          color: Theme.of(context).primaryColorDark,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cardModel(
                data: cardInfo(
                  _width * 0.02,
                  Theme.of(context).primaryColorDark,
                )[0],
                cardWidth: _width * 0.3,
                cardHeight: _heigth * 0.7,
                colorOne: Theme.of(context).primaryColorDark,
                colorTwo: Theme.of(context).primaryColorLight,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I\'m interested in Machine Learning Applications in',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context)
                          .primaryColorLight, //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  Text(
                    'Road Construction Field and Developing Mobile Applications',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context)
                          .primaryColorLight, //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: _width,
          height: _heigth,
          color: Theme.of(context).primaryColorLight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exploring the Applications of Machine Learning',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context).primaryColorDark,
                      //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  Text(
                    'in the Road Construction Field',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: _width * 0.02,
                      color: Theme.of(context).primaryColorDark,
                      //color: Color.fromRGBO(37, 78, 88, 100),
                    ),
                  ),
                  // Text(
                  //   'Recently Completed the MSc in',
                  //   style: TextStyle(
                  //     fontFamily: 'Lato',
                  //     fontSize: _width * 0.02,
                  //     color: Theme.of(context).primaryColorDark,
                  //     //color: Color.fromRGBO(37, 78, 88, 100),
                  //   ),
                  // ),
                  // Text(
                  //   'Highway and Traffic Engineering',
                  //   style: TextStyle(
                  //     fontFamily: 'Lato',
                  //     fontSize: _width * 0.02,
                  //     color: Theme.of(context)
                  //         .primaryColorDark, //color: Color.fromRGBO(37, 78, 88, 100),
                  //   ),
                  // ),
                ],
              ),
              cardModel(
                data: cardInfo(
                    _width * 0.02, Theme.of(context).primaryColorLight)[2],
                cardWidth: _width * 0.3,
                cardHeight: _heigth * 0.7,
                colorOne: Theme.of(context).primaryColorLight,
                colorTwo: Theme.of(context).primaryColorDark,
              ),
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColorDark,
          width: _width,
          height: _width * 0.1,
          child: Center(
            child: navBarTop(),
          ),
        )
      ],
    );
  }
}
