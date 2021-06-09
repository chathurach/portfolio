// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';
// import 'package:portfolio/Data/data.dart';
// import 'cardModel.dart';
// //import 'package:show_up_animation/';

// class Bodybar extends StatefulWidget {
//   @override
//   _BodybarState createState() => _BodybarState();
// }

// class _BodybarState extends State<Bodybar> {
//   @override
//   Widget build(BuildContext context) {
//     var _height = MediaQuery.of(context).size.height;
//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//       if (constraints.maxWidth >= 1200) {
//         //return BodyLayout(verticalNum: 3);
//         //print(constraints.maxWidth);
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           color: Colors.white,
//           height: _height,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               cardModel(data: cardInfo()[0]),
//               cardModel(data: cardInfo()[1]),
//               cardModel(data: cardInfo()[2]),
//             ],
//           ),
//         );
//       } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 836) {
//         //return BodyLayout(verticalNum: 3);
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           height: _height,
//           color: Colors.white,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               cardModel(data: cardInfo()[0]),
//               cardModel(data: cardInfo()[1]),
//               cardModel(data: cardInfo()[2]),
//             ],
//           ),
//         );
//       } else if (constraints.maxWidth <= 836) {
//         return Container(
//           color: Colors.white,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   cardModel(data: cardInfo()[0]),
//                   cardModel(data: cardInfo()[1]),
//                   cardModel(data: cardInfo()[1]),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   cardModel(data: cardInfo()[2]),
//                   cardModel(data: cardInfo()[0]),
//                 ],
//               ),
//             ],
//           ),
//         );
//         //return BodyLayout(verticalNum: 2);
//         // return Container(
//         //   width: MediaQuery.of(context).size.width,
//         //   color: Colors.white,
//         //   child: GridView.count(
//         //     shrinkWrap: true,
//         //     crossAxisCount: 2,
//         //     children: [
//         //       cardModel(data: cardInfo()[0]),
//         //       cardModel(data: cardInfo()[1]),
//         //       cardModel(data: cardInfo()[2]),
//         //       cardModel(data: cardInfo()[0]),
//         //     ],
//         //   ),
//         // );
//       } else
//         //return BodyLayout(verticalNum: 3);
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           height: _height,
//           color: Colors.white,
//           child: Row(
//             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               cardModel(data: cardInfo()[0]),
//               cardModel(data: cardInfo()[1]),
//               cardModel(data: cardInfo()[2]),
//             ],
//           ),
//         );
//     });
//   }
// }

// // class BodyLayout extends StatefulWidget {
// //   late final int verticalNum;
// //   BodyLayout({required this.verticalNum});
// //   //const BodyLayout({Key? key}) : super(key: key);

// //   @override
// //   _BodyLayoutState createState() => _BodyLayoutState();
// // }

// // class _BodyLayoutState extends State<BodyLayout> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: MediaQuery.of(context).size.height,
// //       child: GridView.count(
// //         shrinkWrap: true,
// //         crossAxisCount: widget.verticalNum,
// //         children: [
// //           cardModel(data: cardInfo()[0]),
// //           cardModel(data: cardInfo()[1]),
// //           cardModel(data: cardInfo()[2]),
// //           cardModel(data: cardInfo()[0]),
// //         ],
// //       ),
// //     );
// //   }
// // }
