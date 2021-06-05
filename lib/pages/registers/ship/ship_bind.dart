import 'package:get/get.dart';
import 'package:mapbay/database/rest_client_getx.dart';
import 'package:mapbay/pages/registers/ship/repository/ship_interface_repository.dart';
import 'package:mapbay/pages/registers/ship/repository/ship_repository.dart';
import 'package:mapbay/pages/registers/ship/ship_controller.dart';

class ShipBinds extends Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<IShipRepository>(ShipRepository(Get.find()));
    Get.put(ShipController(Get.find()));
  }
}
