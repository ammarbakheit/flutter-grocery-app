// import 'package:flutter/material.dart';
// import '../utils/colors.dart';

// class Product extends StatefulWidget {
 
//   @override
//   _ProductState createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
  

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//             appBar: AppBar(
//               elevation: 0.0,
//               backgroundColor: whiteColor,
//               iconTheme: IconThemeData(color: blackColor),
//             ),
//             body: Center(
//               child: Container(
//                 child: Hero(
//                     tag: title,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 20, right: 20),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: <Widget>[
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Container(
//                                   width: MediaQuery.of(context).size.width / 3,
//                                   child: Image.asset(
//                                     title,
//                                   ),
//                                 ),
//                                 Container(
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: <Widget>[
//                                       Text("Apple",
//                                           style: TextStyle(
//                                               fontSize: 30,
//                                               fontWeight: FontWeight.bold)),
//                                       Text("Fresh Apples"),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 60,
//                             ),
//                             Divider(),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   "Description",
//                                   style: TextStyle(
//                                       fontSize: 40,
//                                       fontWeight: FontWeight.w900),
//                                 ),
//                                 SizedBox(
//                                   height: 20,
//                                 ),
//                                 Text(
//                                     "LOrem ipsum LOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsum LOrem ipsum LOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsum LOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsum LOrem ipsumLOrem ipsumLOrem ipsumLOrem ipsum")
//                               ],
//                             ),
//                             SizedBox(
//                               height: 60,
//                             ),
//                             Divider(),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 GestureDetector(
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: blueColor,
//                                     ),
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 15, horizontal: 20),
//                                     child: Icon(
//                                       Icons.keyboard_arrow_up,
//                                       color: whiteColor,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(
//                                           color: grayColor, width: 1.0)),
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 20, horizontal: 40),
//                                   child: Text(
//                                     "12",
//                                     style: TextStyle(fontSize: 22),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 20,
//                                 ),
//                                 GestureDetector(
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         color: blueColor,
//                                         borderRadius:
//                                             BorderRadius.circular(20)),
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 15, horizontal: 20),
//                                     child: Center(
//                                       child: Icon(
//                                         Icons.keyboard_arrow_down,
//                                         color: whiteColor,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 20,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 GestureDetector(
//                                   child: Container(
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 20, horizontal: 90),
//                                     decoration: BoxDecoration(
//                                         color: greenColor,
//                                         borderRadius:
//                                             BorderRadius.circular(30)),
//                                     child: Text(
//                                       "Add to Card",
//                                       style: TextStyle(
//                                           color: whiteColor, fontSize: 24),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     )),
//               ),
//             ),
//           );
//   }
// }