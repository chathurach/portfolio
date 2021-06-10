import 'package:flutter/material.dart';
import 'package:portfolio/TopBar/navigationBar.dart';
import 'ShowUp.dart';

class Topbar extends StatefulWidget {
  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 1200) {
        //print(constraints.minWidth);
        return DesktopTopbar();
      } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 836) {
        // print('2');
        return DesktopTopbar();
      } else if (constraints.maxWidth <= 836) {
        //print('3');
        return MobileTopbar();
      } else
        return DesktopTopbar();
    });
  }
}

class DesktopTopbar extends StatefulWidget {
  @override
  _DesktopTopbarState createState() => _DesktopTopbarState();
}

class _DesktopTopbarState extends State<DesktopTopbar> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorDark,
          ], radius: 0.8),
          shape: BoxShape.rectangle),
      child: Padding(
        padding: EdgeInsets.all(_width * 0.015),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowUp(
                delay: 50,
                child: Text(
                  'Chathura Chamikara',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.07,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 250,
                child: Text(
                  'Hi, I\'m a Material Engineer currently working at',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.017,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 450,
                child: Text(
                  'Road Development Authority Sri Lanka',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.017,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 450,
                child: SizedBox(
                  height: _width * 0.04,
                ),
              ),
              ShowUp(
                delay: 650,
                child: Container(
                  width: _width * 0.15,
                  height: _width * 0.15,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      left: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      right: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      bottom: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image.jpg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _width * 0.03,
              ),
              ShowUp(
                child: navBarTop(),
                delay: 650,
              ),
            ],
          ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

class MobileTopbar extends StatefulWidget {
  @override
  _MobileTopbarState createState() => _MobileTopbarState();
}

class _MobileTopbarState extends State<MobileTopbar> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    //print('mobile top bar');
    return Container(
      width: _width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorDark,
          ], radius: 0.8),
          shape: BoxShape.rectangle),
      child: Padding(
        padding: EdgeInsets.all(_width * 0.015),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowUp(
                delay: 50,
                child: Text(
                  'Chathura',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.1,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 50,
                child: Text(
                  'Chamikara',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.1,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 250,
                child: Text(
                  'Hi, I\'m a Material Engineer currently working at',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.035,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 450,
                child: Text(
                  'Road Development Authority Sri Lanka',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    height: 1.0,
                    fontFamily: 'Esteban',
                    fontSize: _width * 0.035,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              ShowUp(
                delay: 450,
                child: SizedBox(
                  height: _width * 0.04,
                ),
              ),
              ShowUp(
                delay: 650,
                child: Container(
                  width: _width * 0.3,
                  height: _width * 0.3,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      left: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      right: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                      bottom: BorderSide(
                        width: _width * 0.003,
                        color: Colors.white,
                      ),
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image.jpg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _width * 0.035,
              ),
              ShowUp(
                child: navBarMobile(),
                delay: 650,
              ),
            ],
          ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
