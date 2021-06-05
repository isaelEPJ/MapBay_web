import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/model/ship.dart';
import 'package:mapbay/pages/registers/ship/ship_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';

class ShipScreen extends StatefulWidget {
  final ShipController controller;
  ShipScreen(this.controller);
  @override
  _ShipScreenState createState() => _ShipScreenState();
}

class _ShipScreenState extends State<ShipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Embarcaçoes'),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.51,
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Theme.of(context).hintColor.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_boat_rounded,
                                  color: Theme.of(context).primaryColor,
                                  size: 25,
                                ),
                                Text(
                                  ' Embarcaçoes',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              // width: MediaQuery.of(context).size.width * 0.33,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Container(
                                child: widget.controller.obx((state) {
                                  return ListView.builder(
                                    itemCount: state.lenght,
                                    itemBuilder: (context, index) {
                                      final Ship ship = state[index];
                                      return Container(
                                        child: Text(ship.name),
                                      );
                                    },
                                  );
                                }, onError: (error) {
                                  Get.defaultDialog(
                                      title: 'error',
                                      content: Text(error.toString()));
                                  return Container(
                                      // child: Text('erro'),
                                      );
                                }),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.33,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  // color: Theme.of(context)
                                  //     .hintColor
                                  //     .withOpacity(0.1),
                                  // borderRadius: BorderRadius.circular(5),
                                  ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: DefaultElevatedButton(
                                      borderColor: Theme.of(context).errorColor,
                                      color: Theme.of(context)
                                          .errorColor
                                          .withOpacity(0.7),
                                      title: 'Voltar',
                                      tooltip: 'Voltar a tela inicial',
                                      icon: Icon(Icons.arrow_back),
                                      onPress: () {
                                        Get.offNamed(AppRoutes.HOME);
                                      },
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: DefaultElevatedButton(
                                      borderColor:
                                          Theme.of(context).primaryColor,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.7),
                                      title: 'Cadastrar',
                                      tooltip: 'Cadastrar nova Embarcaçao',
                                      icon: Icon(Icons.add),
                                      onPress: () {
                                        Get.offNamed(AppRoutes.CreateShip);
                                      },
                                    ),
                                  )
                                ],
                              ),
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
    );
  }
}
