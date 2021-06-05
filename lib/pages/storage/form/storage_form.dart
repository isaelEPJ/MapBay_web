import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/model/storage.dart';
import 'package:mapbay/pages/storage/form/extra_form_storage.dart';
import 'package:mapbay/pages/storage/form/header_form_Storage.dart';
import 'package:mapbay/pages/storage/form/product_form_Storage.dart';
import 'package:mapbay/pages/storage/form/totalizer_form_storage.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/utils/core.dart';

class StorageForm extends StatefulWidget {
  @override
  _StorageFormState createState() => _StorageFormState();
}

class _StorageFormState extends State<StorageForm> {
  @override
  Widget build(BuildContext context) {
    final storage = ModalRoute.of(context)!.settings.arguments as Storage?;

    _noEditingArea() {
      AlertDialog(
        content: Text(
            'Este Campo nao pode ser alterado, altere o valor em KG ou M3 para altera-lo.'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Nova Armazenagem'),
      ),
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.81,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      storage == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: HeaderFormStorage(
                                    isEditing: false,
                                    storage: storage,
                                  ),
                                ),
                                Container(
                                  child: ExtraFormStorage(
                                    isEditing: false,
                                    storage: storage,
                                  ),
                                ),
                                Container(
                                  child: ProductFormStorage(
                                    isEditing: false,
                                    storage: storage,
                                  ),
                                ),
                                SizedBox(height: 100),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  // height: MediaQuery.of(context).size.height * 0.3,
                                  child: ExtraFormStorage(
                                      storage: storage, isEditing: true),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.98,
                                  // height: MediaQuery.of(context).size.height * 0.3,
                                  child: ProductFormStorage(
                                      storage: storage, isEditing: true),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.98,
                                  // height: MediaQuery.of(context).size.height * 0.3,
                                  child: storage != null
                                      ? HeaderFormStorage(
                                          storage: storage, isEditing: true)
                                      : Container(
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.04,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  child: Expanded(
                                                      child: IconButton(
                                                    icon: Icon(
                                                      Icons.arrow_back,
                                                      size: 30,
                                                    ),
                                                    onPressed: () {
                                                      Get.offNamed(
                                                          AppRoutes.Storage);
                                                    },
                                                  )),
                                                ),
                                                Text(
                                                  'Sem dados da Armazenagem, procure novamente.',
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .errorColor,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                ),
                              ],
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            child: TotalizerFormStorage(),
          ),
        ],
      ),
    );
  }
}
