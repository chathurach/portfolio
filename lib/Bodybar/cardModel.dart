import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Data/data.dart';

class cardModel extends StatefulWidget {
  final cardData data;
  final double cardWidth;
  final double cardHeight;
  final Color colorOne;
  final Color colorTwo;

  cardModel({
    required this.data,
    required this.cardWidth,
    required this.cardHeight,
    required this.colorOne,
    required this.colorTwo,
  });

  @override
  _cardModelState createState() => _cardModelState();
}

class _cardModelState extends State<cardModel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animationBG;
  late Animation<Color?> _animationTxt;
  late Animation<double> _animationOpacity;
  //late List<cardData> data = cardInfo();
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );

    _animationBG = ColorTween(
      begin: widget.colorOne,
      end: widget.colorTwo,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _animationTxt = ColorTween(
      begin: widget.colorTwo,
      end: widget.colorOne,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _animationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      //padding: EdgeInsets.all(_width * 0.03),
      child: MouseRegion(
        onEnter: (event) => _controller.forward(),
        onExit: (event) => _controller.reverse(),
        child: Card(
          elevation: 8.0,
          //color: Color.fromRGBO(37, 78, 88, 100),
          color: _animationBG.value,
          child: Stack(
            children: [
              Positioned(
                right: _width * 0.09,
                bottom: _width * 0.03,
                child: Opacity(
                  opacity: (1 - _animationOpacity.value) * 0.4,
                  child: FaIcon(
                    widget.data.icon,
                    size: _width * 0.3,
                    color: widget.colorTwo,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Center(
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 1.0 - _animationOpacity.value,
                          child: Text(
                            widget.data.title.data.toString(),
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: _width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: widget.colorTwo,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: widget.cardWidth,
                height: widget.cardHeight,
                // width: MediaQuery.of(context).size.width * 0.25,
                // height: MediaQuery.of(context).size.width * 0.4,
                //height: MediaQuery.of(context).size.width *
                // _animationSize.value!.toDouble(),
                child: Padding(
                  padding: EdgeInsets.all(_width * 0.015),
                  child: Opacity(
                    opacity: _animationOpacity.value,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FaIcon(
                              widget.data.icon,
                              color: widget.colorOne,
                              size: widget.data.title.style!.fontSize,
                            ),
                            SizedBox(
                              width: widget.data.title.style!.fontSize,
                            ),
                            widget.data.title,
                            // Text(
                            //   widget.data.title.data.toString(),
                            //   style: TextStyle(
                            //     fontFamily: 'Lato',
                            //     fontSize: _width * 0.02,
                            //     fontWeight: FontWeight.bold,
                            //     color: widget.colorOne,
                            //     //color: Color.fromRGBO(37, 78, 88, 100),
                            //     //color: _animationTxt.value,
                            //   ),
                            //)
                          ],
                        ),
                        SizedBox(
                          height: _width * 0.02,
                        ),
                        Expanded(
                          child: widget.data.body,
                        ),

                        // Container(
                        //   child: Center(
                        //     child: widget.data.body,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardModelMobile extends StatefulWidget {
  @override
  final cardData data;
  final double cardWidth;
  final double cardHeight;
  final Color colorOne;
  final Color colorTwo;

  cardModelMobile({
    required this.data,
    required this.cardWidth,
    required this.cardHeight,
    required this.colorOne,
    required this.colorTwo,
  });

  @override
  _cardModelMobileState createState() => _cardModelMobileState();
}

class _cardModelMobileState extends State<cardModelMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animationBG;
  late Animation<Color?> _animationTxt;
  late Animation<double> _animationOpacity;
  //late List<cardData> data = cardInfo();
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );

    _animationBG = ColorTween(
      begin: widget.colorOne,
      end: widget.colorTwo,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _animationTxt = ColorTween(
      begin: widget.colorTwo,
      end: widget.colorOne,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _animationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      //padding: EdgeInsets.all(_width * 0.03),
      child: GestureDetector(
        onTapDown: (event) => _controller.forward(),
        onTapUp: (event) => _controller.reverse(),
        child: Card(
          elevation: 8.0,
          //color: Color.fromRGBO(37, 78, 88, 100),
          color: _animationBG.value,
          child: Stack(
            children: [
              Positioned(
                right: _width * 0.09,
                bottom: _width * 0.03,
                child: Opacity(
                  opacity: (1 - _animationOpacity.value) * 0.4,
                  child: FaIcon(
                    widget.data.icon,
                    size: _width * 0.3,
                    color: widget.colorTwo,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Center(
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 1.0 - _animationOpacity.value,
                          child: Text(
                            widget.data.title.data.toString(),
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: _width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: widget.colorTwo,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: widget.cardWidth,
                height: widget.cardHeight,
                // width: MediaQuery.of(context).size.width * 0.25,
                // height: MediaQuery.of(context).size.width * 0.4,
                //height: MediaQuery.of(context).size.width *
                // _animationSize.value!.toDouble(),
                child: Padding(
                  padding: EdgeInsets.all(_width * 0.015),
                  child: Opacity(
                    opacity: _animationOpacity.value,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FaIcon(
                              widget.data.icon,
                              color: widget.colorOne,
                              size: widget.data.title.style!.fontSize,
                            ),
                            SizedBox(
                              width: widget.data.title.style!.fontSize,
                            ),
                            widget.data.title,
                            // Text(
                            //   widget.data.title.data.toString(),
                            //   style: TextStyle(
                            //     fontFamily: 'Lato',
                            //     fontSize: _width * 0.02,
                            //     fontWeight: FontWeight.bold,
                            //     color: widget.colorOne,
                            //     //color: Color.fromRGBO(37, 78, 88, 100),
                            //     //color: _animationTxt.value,
                            //   ),
                            //)
                          ],
                        ),
                        SizedBox(
                          height: _width * 0.02,
                        ),
                        Expanded(
                          child: widget.data.body,
                        ),

                        // Container(
                        //   child: Center(
                        //     child: widget.data.body,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
