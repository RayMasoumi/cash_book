// import 'package:flutter/material.dart';
//
// class CashBookTextFieldWidget extends StatelessWidget {
//   const CashBookTextFieldWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(23.5, 87, 24, 85),
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // * the title
//
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0, 3.5, 26),
//             child: const Text(
//               'Please Fill In The Fields Below To Enter And Sign Up',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 height: 1.26,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.fromLTRB(0, 0, 0, 35),
//             // width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   // group1Lfs (10:68)
//                   margin: const EdgeInsets.fromLTRB(0.5, 0, 0, 0),
//                   width: 322,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
//                         width: double.infinity,
//                         child: const Text(
//                           'Username:',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             height: 1.26,
//                             color: Color(0xff383838),
//                           ),
//                         ),
//                       ),],
//           //             Container(
//           //               padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
//           //               width: double.infinity,
//           //               decoration: BoxDecoration(
//           //                 border: Border.all(
//           //                   color: const Color(0x47000000),
//           //                 ),
//           //                 color: const Color(0xffffffff),
//           //                 borderRadius: BorderRadius.circular(12),
//           //               ),
//           //               child: const Text(
//           //                 'ENTER YOUR USER NAME',
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   height: 1.26,
//           //                   color: Color(0xffaeaeae),
//           //                 ),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //       SizedBox(
//           //         height: 19,
//           //       ),
//           //       Container(
//           //         // group2e4H (10:71)
//           //         margin: EdgeInsets.fromLTRB(0.5, 0, 1, 0),
//           //         width: double.infinity,
//           //         decoration: BoxDecoration(
//           //           borderRadius: BorderRadius.circular(12),
//           //         ),
//           //         child: Column(
//           //           crossAxisAlignment: CrossAxisAlignment.start,
//           //           children: [
//           //             Container(
//           //               // emailNFB (10:73)
//           //               margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
//           //               width: double.infinity,
//           //               child: const Text(
//           //                 'EMAIL : ',
//           //                 textAlign: TextAlign.center,
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   height: 1.26,
//           //                   color: Color(0xffaeaeae),
//           //                 ),
//           //               ),
//           //             ),
//           //             Container(
//           //               // autogroupdhqkU3K (7JTU63SMGoFFCj7pkbDHqK)
//           //               padding: EdgeInsets.fromLTRB(14, 16, 14, 16),
//           //               width: double.infinity,
//           //               decoration: BoxDecoration(
//           //                 border: Border.all(color: Color(0x47000000)),
//           //                 color: Color(0xffffffff),
//           //                 borderRadius: BorderRadius.circular(12),
//           //               ),
//           //               child: Text(
//           //                 'ENTER YOUR EMAIL',
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   height: 1.26,
//           //                   color: Color(0xffaeaeae),
//           //                 ),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //       SizedBox(
//           //         height: 19,
//           //       ),
//           //       Container(
//           //         // group3jzq (10:74)
//           //         width: 321.5,
//           //         decoration: BoxDecoration(
//           //           borderRadius: BorderRadius.circular(12),
//           //         ),
//           //         child: Column(
//           //           crossAxisAlignment: CrossAxisAlignment.start,
//           //           children: [
//           //             Container(
//           //               // phonenumberHmT (10:76)
//           //               margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
//           //               width: double.infinity,
//           //               child: Text(
//           //                 'PHONE NUMBER : ',
//           //                 textAlign: TextAlign.center,
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   height: 1.26,
//           //                   color: Color(0xffaeaeae),
//           //                 ),
//           //               ),
//           //             ),
//           //             Container(
//           //               // autogroup3cmoC7j (7JTUDd446ZENCJ91m73cMo)
//           //               margin: EdgeInsets.fromLTRB(0.5, 0, 0, 0),
//           //               padding: EdgeInsets.fromLTRB(13.5, 16, 13.5, 16),
//           //               width: 321,
//           //               decoration: BoxDecoration(
//           //                 border: Border.all(color: Color(0x47000000)),
//           //                 color: Color(0xffffffff),
//           //                 borderRadius: BorderRadius.circular(12),
//           //               ),
//           //               child: Text(
//           //                 'ENTER YOUR PHONE NUMBER ',
//           //                 textAlign: TextAlign.center,
//           //                 style: TextStyle(
//           //                   fontSize: 14,
//           //                   fontWeight: FontWeight.w500,
//           //                   height: 1.26,
//           //                   color: Color(0xffaeaeae),
//           //                 ),
//           //               ),
//           //             ),
//           //           ],
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Container(
//           //   // autogroupgzphdyj (7JTTGQ94xKLmpaRChMgzpH)
//           //   margin: EdgeInsets.fromLTRB(4.5, 0, 150.5, 133),
//           //   width: double.infinity,
//           //   child: Row(
//           //     crossAxisAlignment: CrossAxisAlignment.center,
//           //     children: [
//           //       Container(
//           //         // rectangle9yXo (5:216)
//           //         margin: EdgeInsets.fromLTRB(0, 0, 8.5, 0),
//           //         width: 22,
//           //         height: 23,
//           //         decoration: BoxDecoration(
//           //           borderRadius: BorderRadius.circular(6),
//           //           border: Border.all(color: Color(0xffb8b8b8)),
//           //         ),
//           //       ),
//           //       Container(
//           //         // iagreetopermissions6sK (5:218)
//           //         margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
//           //         child: Text(
//           //           'I AGREE TO PERMISSIONS ',
//           //           textAlign: TextAlign.center,
//           //           style: TextStyle(
//           //             fontSize: 14,
//           //             fontWeight: FontWeight.w500,
//           //             height: 1.26,
//           //             color: Color(0xffaeaeae),
//           //           ),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Container(
//           //   // autogrouphjkbcqf (7JTTReNfTFdYgQLvAkhJKB)
//           //   margin: EdgeInsets.fromLTRB(0.5, 0, 0, 25),
//           //   width: double.infinity,
//           //   height: 53,
//           //   decoration: BoxDecoration(
//           //     color: Color(0xff6667ff),
//           //     borderRadius: BorderRadius.circular(12),
//           //   ),
//           //   child: Center(
//           //     child: Text(
//           //       'SIGN UP ',
//           //       textAlign: TextAlign.center,
//           //       style: TextStyle(
//           //         fontSize: 14,
//           //         fontWeight: FontWeight.w500,
//           //         height: 1.26,
//           //         color: Color(0xffaeaeae),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           // Container(
//           //   // autogroupl3xft2V (7JTTWotj3hmsTzx9QVL3Xf)
//           //   margin: EdgeInsets.fromLTRB(51, 0, 49, 0),
//           //   width: double.infinity,
//           //   child: Row(
//           //     crossAxisAlignment: CrossAxisAlignment.center,
//           //     children: [
//           //       Container(
//           //         // ialreadyhaveanaccountRHK (10:113)
//           //         margin: EdgeInsets.fromLTRB(0, 1, 9.5, 0),
//           //         child: Text(
//           //           'I ALREADY HAVE AN ACCOUNT : ',
//           //           textAlign: TextAlign.center,
//           //           style: TextStyle(
//           //             fontSize: 14,
//           //             fontWeight: FontWeight.w500,
//           //             height: 1.26,
//           //             color: Color(0xffaeaeae),
//           //           ),
//           //         ),
//           //       ),
//           //       Container(
//           //         // logink4h (10:114)
//           //         margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
//           //         child: TextButton(
//           //           onPressed: () {},
//           //           style: TextButton.styleFrom(
//           //             padding: EdgeInsets.zero,
//           //           ),
//           //           child: Text(
//           //             'LOG IN',
//           //             textAlign: TextAlign.center,
//           //             style: TextStyle(
//           //               fontSize: 14,
//           //               fontWeight: FontWeight.w500,
//           //               height: 1.26,
//           //               color: Color(0xffaeaeae),
//           //               decorationColor: Color(0xff6667ff),
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //     ],
//           //   )),
//           // ),
//         ],
//       ),
//     );
//   }
// }
