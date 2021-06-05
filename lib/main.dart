import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/Home/home_page.dart';
import 'package:mapbay/pages/boarding/boarding_list.dart';
import 'package:mapbay/pages/operation/operation_list.dart';
import 'package:mapbay/pages/registers/client/client_bind.dart';
import 'package:mapbay/pages/registers/client/client_page.dart';
import 'package:mapbay/pages/registers/client/widgets/create_client.dart';
import 'package:mapbay/pages/registers/crew/crew_form.dart';
import 'package:mapbay/pages/registers/crew/crew_screen.dart';
import 'package:mapbay/pages/registers/registers_page.dart';
import 'package:mapbay/pages/registers/ship/ship_bind.dart';
import 'package:mapbay/pages/registers/ship/ship_screen.dart';
import 'package:mapbay/pages/registers/ship/widgets/ship_create.dart';
import 'package:mapbay/pages/storage/form/storage_form.dart';
import 'package:mapbay/pages/storage/storage_list.dart';
import 'package:mapbay/pages/unload/unload_list.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/app_colors.dart';

void main() {
  runApp(MapBay());
}

class MapBay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MapBay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.bluePrimary,
        hintColor: AppColors.blueSecoundaryDark,
        accentColor: AppColors.colorSecondary,
        backgroundColor: AppColors.whiteBackground,
        canvasColor: AppColors.secondaryWhiteBackground,
        // buttonColor: ,
        snackBarTheme: SnackBarThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                width: 1,
                color: Theme.of(context).primaryColor,
              )),
        ),
      ),
      getPages: [
        GetPage(name: AppRoutes.HOME, page: () => HomePage()),
        GetPage(name: AppRoutes.Register, page: () => RegistersPage()),
        GetPage(name: AppRoutes.Storage, page: () => StorageList()),
        GetPage(name: AppRoutes.CreateStorage, page: () => StorageForm()),
        GetPage(name: AppRoutes.Operation, page: () => OperationList()),
        GetPage(name: AppRoutes.Unload, page: () => UnloadList()),
        GetPage(name: AppRoutes.Boarding, page: () => BoardingList()),
        GetPage(
            name: AppRoutes.Client,
            binding: ClientBind(),
            page: () => ClientPage(Get.find())),
        GetPage(
            name: AppRoutes.CreateClient,
            binding: ClientBind(),
            page: () => CreateClient(
                  controller: Get.find(),
                )),
        GetPage(name: AppRoutes.Crew, page: () => CrewScreen()),
        GetPage(name: AppRoutes.CreateCrew, page: () => CreateCrew()),
        GetPage(
            name: AppRoutes.Ship,
            binding: ShipBinds(),
            page: () => ShipScreen(Get.find())),
        GetPage(
            name: AppRoutes.CreateShip,
            binding: ShipBinds(),
            page: () => CreateShip(Get.find())),
      ],
    );
  }
}
