// import 'package:bomnegocio/pages/model/product.dart';
// import 'package:flutter/material.dart';

// class ProductScreen extends StatelessWidget {
//   // final Product product;
//   // ProductScreen(this.product);

//   @override
//   Widget build(BuildContext context) {
//     final product = ModalRoute.of(context).settings.arguments as Product;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product.name),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Colors.pink[100],
//               ),
//               height: MediaQuery.of(context).size.height * 0.3,
//               padding: EdgeInsets.all(3),
//               child: Center(
//                 child: Text('Imagem Aqui'),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.amber.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               height: MediaQuery.of(context).size.height * 0.15,
//               child: Center(
//                 child: Text(product.description),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               height: MediaQuery.of(context).size.height * 0.2,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Container(
//                     width: 140,
//                     height: 200,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 1,
//                         color: Colors.black,
//                       ),
//                     ),
//                     child: Center(
//                       child: Text('Mapa'),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           ' product.owner.adress.cep',
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           '${product.owner.adress.city}-${product.owner.adress.state} ',
//                           style: TextStyle(
//                             fontSize: 10,
//                           ),
//                         ),
//                         Text(
//                           ' product.owner.adress.place',
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.1,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Column(
//                     children: [
//                       Text(
//                         product.price.toString(),
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         '12x de ${product.price.toInt() / 1}',
//                         style: TextStyle(
//                           fontSize: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                       color: Theme.of(context).accentColor,
//                       icon: Icon(Icons.chat),
//                       onPressed: () {}),
//                   IconButton(
//                       color: Theme.of(context).accentColor,
//                       icon: Icon(Icons.call),
//                       onPressed: () {}),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         primary: Theme.of(context).accentColor,
//                         onPrimary: Theme.of(context).primaryColor),
//                     onPressed: () {},
//                     child: Text('Comprar'),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
