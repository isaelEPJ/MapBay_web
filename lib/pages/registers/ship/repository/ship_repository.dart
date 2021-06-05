import 'package:mapbay/database/rest_client_getx.dart';
import 'package:mapbay/pages/model/ship.dart';
import 'package:mapbay/pages/registers/ship/repository/ship_interface_repository.dart';

class ShipRepository implements IShipRepository {
  final RestClient _restClient;
  ShipRepository(this._restClient);

  @override
  Future<List<Ship>?> findAllShips() async {
    try {
      final response = await _restClient.get(
          'https://6089321d8c8043001757e30d.mockapi.io/ships', decoder: (body) {
        if (body is List) {
          return body.map<Ship>((data) => Ship.fromMap(data)).toList();
        }
        return null;
      });
      if (response.hasError) {
        print(response.statusText);
        throw Exception('Erro ao carregar clientes');
      }
      return response.body;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  // Future<void> createShip(
  //   name,
  //   imageUrl,
  //   document,
  //   responsible,
  //   fabrication,
  //   brand,
  //   contact,
  //   capacity,
  //   width,
  //   height,
  //   lenght,
  //   weight,
  // ) {
  //   return;
  // }
}
