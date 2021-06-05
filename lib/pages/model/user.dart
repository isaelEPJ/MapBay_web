import 'package:mapbay/pages/model/adress.dart';

class User {
  final String? name;
  final String? document;
  final Adress? adress;
  final String? email;
  final bool? activate;
  final int? yearsOld;

  const User({
    this.name,
    this.document,
    this.adress,
    this.email,
    this.activate,
    this.yearsOld,
  });
}
