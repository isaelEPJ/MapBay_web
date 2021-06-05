import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/registers/ship/repository/ship_interface_repository.dart';

class ShipController extends GetxController with StateMixin {
  final IShipRepository _shipRepository;
  ShipController(this._shipRepository);

  Future<void> _findShips() async {
    change([], status: RxStatus.loading());
    try {
      // return _shipRepository.
      change([], status: RxStatus.success());
    } catch (err) {
      print(err);
      change([],
          status: RxStatus.error('Erro ao carregar a lista de embarcaçoes'));
    }
  }

  // var ship_number = TextEditingController();
  var nameController = TextEditingController();
  // var imgUrlController = TextEditingController();
  var documentController = TextEditingController();
  var responsibleController = TextEditingController();
  var contactController = TextEditingController();
  var fabricationController = TextEditingController();

  // endereço
  var cepController = TextEditingController();
  var estadoController = TextEditingController();
  var lagradouroController = TextEditingController();
  var cidadeController = TextEditingController();
  var bairroController = TextEditingController();
  var adressReferenciaController = TextEditingController();
  var adressLatitudeClientController = TextEditingController();
  var adressLongitudeClientController = TextEditingController();
  // observaçao
  var observationController = TextEditingController();
}
