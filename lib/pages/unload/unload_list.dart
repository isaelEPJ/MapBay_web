import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/global/filter_tab_bar.dart';
import 'package:mapbay/pages/data/boarding_data.dart';
import 'package:mapbay/pages/unload/unload_item.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/utils/appRoutes.dart';

class UnloadList extends StatefulWidget {
  UnloadList({Key? key}) : super(key: key);

  @override
  _UnloadListState createState() => _UnloadListState();
}

class _UnloadListState extends State<UnloadList> {
  final bool dateSelected = false;
  final bool clientSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Descarregamento'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Theme.of(context).backgroundColor,
                height: MediaQuery.of(context).size.height * 0.11,
                child: Row(
                  children: <Widget>[],
                )),
            Container(
              color: Theme.of(context).backgroundColor,
              height: MediaQuery.of(context).size.height * 0.80,
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
                              height: MediaQuery.of(context).size.height,
                              child: GridView(
                                padding: EdgeInsets.all(10),
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 1 / 1,
                                ),
                                children: Boarding_Data.map(
                                  (unloading) => UnloadItem(unloading),
                                ).toList(),
                              ),
                            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
