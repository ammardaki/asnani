// // ignore_for_file: must_be_immutable

// import 'package:asnani_app/Screens/login.dart';
// import 'package:asnani_app/style/constant.dart';
// import 'package:flutter/material.dart';

// class Drawerb extends StatelessWidget {
//   String name, phone;
//   final padding = EdgeInsets.symmetric(horizontal: 20.0);
//   Drawerb({
//     required this.name,
//     required this.phone,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: 220,
//       elevation: 0.0,
//       backgroundColor: ClearColor,
//       child: Stack(
//         children: [
//           Container(
//             // margin: EdgeInsets.only(top: 5.0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(25.0),
//                 bottomRight: Radius.circular(25.0),
//               ),
//               border: Border.all(color: Colors.black12, width: 1.5),
//               gradient: LinearGradient(
//                 colors: [
//                   // Colors.greenAccent,
//                   Colors.black,
//                   Colors.blueAccent,
//                   Colors.blue,
//                 ],
//                 begin: Alignment.topLeft, //begin of the gradient color
//                 end: Alignment.bottomRight, //end of the gradient color
//               ),
//             ),
//           ),
//           Scaffold(
//             backgroundColor: ClearColor,
//             body: Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     children: [
//                       dimecom.spaceMedium,
//                       CircleAvatar(
//                         radius: 35,
//                       ),
//                       dimecom.spacelitlle,
//                       Text("$name"),
//                       dimecom.spacelitlle,
//                       Text("$phone"),
//                     ],
//                   ),
//                 ),
//                 dimecom.space20,
//                 ListView(
//                   shrinkWrap: true,
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {},
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.home,
//                           color: kwhite,
//                         ),
//                         title: Text(
//                           'Home',
//                         ),
//                       ),
//                     ),
//                     dimecom.spacelitlle,
//                     InkWell(
//                       onTap: () {
//                         Navigator.of(context).pushNamed("settings");
//                       },
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.settings,
//                           color: kwhite,
//                         ),
//                         title: Text(
//                           'Setting',
//                         ),
//                       ),
//                     ),
//                     dimecom.spacelitlle,
//                     InkWell(
//                       onTap: () {},
//                       child: ListTile(
//                           leading: Icon(
//                             Icons.help,
//                             color: kwhite,
//                           ),
//                           title: Text('About Us')),
//                     ),
//                     dimecom.spacelitlle,
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (_) {
//                           return Login();
//                         }));
//                       },
//                       child: ListTile(
//                           leading: Icon(
//                             Icons.logout,
//                             color: kwhite,
//                           ),
//                           title: Text('Logout')),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
