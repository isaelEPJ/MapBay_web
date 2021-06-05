// import 'package:flutter/material.dart';

// class ItemListClient extends StatelessWidget {
//   const ItemListClient({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           InkWell(
//             onTap: () {},
//             splashColor: Theme.of(context).primaryColor,
//             child: Container(
//               color: Colors.red,
//               width: MediaQuery.of(context).size.width * 0.3,
//               height: MediaQuery.of(context).size.height * 0.06,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(client.name),
//                       SizedBox(
//                           width: MediaQuery.of(context).size.height * 0.02),
//                       Text(client.fantasyName),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(client.email),
//                       SizedBox(
//                           width: MediaQuery.of(context).size.height * 0.02),
//                       Text(client.createdAt.toString()),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Divider(),
//         ],
//       ),
//     );
//   }
// }
