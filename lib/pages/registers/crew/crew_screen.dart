import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/components/global/filter_tab_bar.dart';
import 'package:mapbay/pages/registers/crew/crew_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';

class CrewScreen extends StatefulWidget {
  @override
  _CrewScreenState createState() => _CrewScreenState();
}

class _CrewScreenState extends State<CrewScreen> {
  final clientController = CrewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Tripulantes'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).backgroundColor,
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_page_rounded,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    Text(
                      ' Pesquisar Tripulantes',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FilterTabBar(
                      onClickNew: () {
                        Get.offNamed(AppRoutes.CreateCrew);
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.4),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                // child: Container(
                                //   child: widget.controller.obx((state) {
                                //     return CircularProgressIndicator();
                                //    onError: (error) {
                                //     print(error);
                                //     return Column(
                                //       children: [
                                //         Text('deu erro: $error'),
                                //       ],
                                //     );
                                //   }),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
