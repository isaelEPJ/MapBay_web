import 'package:get/get.dart';
import 'package:mapbay/database/rest_client_getx.dart';
import 'package:mapbay/pages/registers/client/client_controller.dart';
import 'package:mapbay/pages/registers/client/repository/client_interface_repository.dart';
import 'package:mapbay/pages/registers/client/repository/client_repository.dart';

class ClientBind implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
    Get.put<IClientInterface>(ClientRepository(Get.find()));
    Get.put(ClientController(Get.find()));
  }
}
