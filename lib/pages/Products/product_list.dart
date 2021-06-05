// import 'package:bomnegocio/pages/data/productData.dart';
// import 'package:bomnegocio/pages/model/product.dart';
// import 'package:bomnegocio/pages/utils/appRoutes.dart';
// import 'package:flutter/material.dart';

// class ProductList extends StatelessWidget {
//   // final Product product;
//   // ProductList(this.product);

//   @override
//   Widget build(BuildContext context) {
//     // final product = ModalRoute.of(context).settings.arguments as Product;

//     _handleOpenProduct(product) {
//       Navigator.of(context).pushNamed(AppRoutes.Product, arguments: product);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Produtos'),
//       ),
//       body: ListView.builder(
//           itemCount: PRODUCT_DATA.length,
//           itemBuilder: (context, snapshot) {
//             Product productSelected = PRODUCT_DATA[snapshot];
//             return InkWell(
//               onTap: () => _handleOpenProduct(productSelected),
//               child: Container(
//                 margin: EdgeInsets.only(top: 10),
//                 child: ListTile(
//                   leading: Container(
//                     width: 55,
//                     height: 55,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                       width: 1,
//                       color: Colors.black,
//                     )),
//                   ),
//                   title: Text(productSelected.name),
//                   subtitle: Text(productSelected.owner.name),
//                   trailing: Text('R\$:${productSelected.price.toString()}'),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
