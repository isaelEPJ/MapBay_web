import 'package:mapbay/pages/model/client.dart';

enum Status {
  stopped,
  loading,
  conclude,
}

class Storage {
  final String? id;
  final String? title;
  final String? document;
  final Client? client;
  final String? imageURL;
  final Status? status;
  final String? payment;
  final String? nameResponsible;
  final String? docResponsible;
  final String? observation;
  final String? userID;
  final bool? isOperating;
  final double? taxa;
  final double? value;
  final double? valueM3;
  final double? valueKG;
  final double? discount;
  final String? initialDate;
  final String? finalDate;

  const Storage({
    required this.id,
    required this.title,
    required this.document,
    required this.client,
    required this.imageURL,
    required this.status,
    required this.payment,
    required this.nameResponsible,
    required this.docResponsible,
    required this.observation,
    required this.userID,
    required this.isOperating,
    required this.taxa,
    required this.value,
    required this.valueM3,
    required this.valueKG,
    required this.discount,
    required this.initialDate,
    required this.finalDate,
  });

  // double get finalMetricM3 {
  //   double totalM3 = 0;
  //   client.products.map((prod) => {
  //         totalM3 += prod.dimensionsM3,
  //       });
  //   return totalM3;
  //   // if (totalM3 > totalKG) {
  //   //   return {'ism3': totalM3};
  //   // } else if (totalKG > totalM3) {
  //   //   return {'iskd': totalKG};
  //   // } else {
  //   //   return 0;
  //   // }
  // }

  // double get finalMetricKG {
  //   double totalKG = 0;
  //   client.products.map((prod) => {
  //         totalKG += prod.dimensionsKG,
  //       });
  //   return totalKG;
  // }

  // get totalValue {
  //   double totalValue = 0;
  //   client.products.map((prod) => {
  //         totalValue += prod.totalPrice,
  //       });
  //   return totalValue;
  // }
}
