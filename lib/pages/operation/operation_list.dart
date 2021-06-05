import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/global/filter_tab_bar.dart';
import 'package:mapbay/pages/data/operation_data.dart';
import 'package:mapbay/pages/model/operation.dart';
import 'package:mapbay/pages/operation/operation_item.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';

class OperationList extends StatefulWidget {
  OperationList();

  @override
  _OperationListState createState() => _OperationListState();
}

class _OperationListState extends State<OperationList> {
  final bool dateSelected = false;
  final bool clientSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Operaçao de Navio'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.show_chart_outlined),
          ),
        ],
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
                      Get.offNamed(AppRoutes.CreateClient);
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
                                  itemCount: Operation_Data.length,
                                  itemBuilder: (context, i) {
                                    Operation operation = Operation_Data[i];
                                    return OperationItem(operation);
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
