import 'package:mapbay/pages/model/ship.dart';

abstract class IShipRepository {
  Future<List<Ship>?> _findAllShips();
  Future<List<Ship>?> _findShip();
  // Future<void> _createShip(
  //   String? name,
  //   String? imageUrl,
  //   String? document,
  //   String? responsible,
  //   String? fabrication,
  //   String? brand,
  //   String? contact,
  //   double? capacity,
  //   double? width,
  //   double? height,
  //   double? lenght,
  //   double? weight,
  // );
}
