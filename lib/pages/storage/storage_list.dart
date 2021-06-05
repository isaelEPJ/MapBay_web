import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/global/filter_tab_bar.dart';
import 'package:mapbay/pages/data/storage_data.dart';
import 'package:mapbay/pages/model/storage.dart';
import 'package:mapbay/pages/storage/storage_controller.dart';
import 'package:mapbay/pages/storage/widgets/storage_item.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/utils/appRoutes.dart';

class StorageList extends StatefulWidget {
  StorageList();

  @override
  _StorageListState createState() => _StorageListState();
}

class _StorageListState extends State<StorageList> {
  final bool dateSelected = false;
  final bool clientSelected = false;

  final storageController = StorageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Armazenagem'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).backgroundColor),
                height: MediaQuery.of(context).size.height * 0.15,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[],
                )),
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).backgroundColor),
              height: MediaQuery.of(context).size.height * 0.77,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FilterTabBar(
                    onClickNew: () {
                      Get.offNamed(AppRoutes.CreateStorage);
                    },
                    onClickFilter: () {
                      print('Abrir modal para filtrar');
                    },
                    onClickBack: () {
                      Get.offNamed(AppRoutes.HOME);
                    },
                    filterOrdened: () {
                      print('abrir modal para realizar ordenamento');
                    },
                    filterDate: () {
                      print('abrir datepicker para pesquisar por data');
                    },
                    pressOnSearch: () {
                      print('o que fazer ao clicar na lupa de pesquisar');
                    },
                    changeOnSearch: () {
                      print('o que fazer no onchange, ao alterar textfield');
                    },
                  ),
                  dateSelected
                      ? Container(
                          height: 40,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'Inicio: 11/02/2020',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17),
                              ),
                              Text(
                                'Conclusao: 11/02/2020',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        )
                      : clientSelected
                          ? Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    '023: Joao Jose figueiredo',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.80,
                              child: ListView.builder(
                                  itemCount: Storage_Data.length,
                                  itemBuilder: (context, i) {
                                    Storage storage = Storage_Data[i];
                                    return StorageItem(storage);
                                  }),
                            ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      //   elevation: 5,
      //   backgroundColor: Theme.of(context).accentColor,
      // ),
    );
  }
}
