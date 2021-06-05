import 'package:mapbay/pages/model/client.dart';
import 'package:mapbay/pages/model/product.dart';
import 'package:mapbay/pages/model/ship.dart';

enum Status {
  stopped,
  loading,
  conclude,
}

class Operation {
  final String id;
  final String title;
  final String document;
  final String imageURL;
  final String barCode;
  final Status status;
  final bool isActivate;
  final Ship? ship;
  final List<Client>? clients;
  final List<Product>? products;
  final String? observation;
  final String initialDate;
  final String? finalDate;

  const Operation({
    required this.id,
    required this.title,
    required this.document,
    required this.imageURL,
    required this.barCode,
    required this.status,
    required this.isActivate,
    this.ship,
    this.clients,
    this.products,
    this.observation,
    required this.initialDate,
    this.finalDate,
  });

  // get value {
  //   double totalValue = 0;
  //   owner.map(
  //     (owner) => owner.products.map((prod) => {
  //           totalValue += prod.totalPrice,
  //         }),
  //   );
  //   return totalValue;
  // }
}
