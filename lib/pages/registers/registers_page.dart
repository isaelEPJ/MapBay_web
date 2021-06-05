import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/pages/registers/register_page_item.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/app_colors.dart';

class RegistersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Cadastros'),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 2),
                    DefaultElevatedButton(
                      title: 'Voltar',
                      borderColor: AppColors.darkRed,
                      color: AppColors.lightRed,
                      onPress: () {
                        Get.offNamed(AppRoutes.HOME);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      tooltip: 'Voltar para tela anterior',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.contact_page_rounded,
                          color: Theme.of(context).primaryColor,
                          size: 30,
                        ),
                        Text(
                          ' Cadastros',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    DefaultElevatedButton(
                      title: 'Ajuda',
                      borderColor: Theme.of(context).primaryColor,
                      color: AppColors.lightBlue,
                      onPress: () {},
                      icon: Icon(
                        Icons.help,
                        size: 25,
                      ),
                      tooltip: 'Tem duvidas?',
                    ),
                    SizedBox(width: 2),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
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
                                width: MediaQuery.of(context).size.width * 0.65,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RegisterItemPage(
                                          item: Category(
                                            id: '1',
                                            name: 'Clientes',
                                            icon: Icons.person_add_sharp,
                                            color: Color(0xFFc0d6df),
                                            route: AppRoutes.Client,
                                          ),
                                        ),
                                        RegisterItemPage(
                                          item: Category(
                                            id: '2',
                                            name: 'Tripulaçao',
                                            icon: Icons.group_outlined,
                                            color: Color(0xFFc0d6df),
                                            route: AppRoutes.Crew,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        RegisterItemPage(
                                          item: Category(
                                            id: '3',
                                            name: 'Embarcaçoes',
                                            icon: Icons.directions_boat_rounded,
                                            color: Color(0xFFc0d6df),
                                            route: AppRoutes.Ship,
                                          ),
                                        ),
                                        RegisterItemPage(
                                          item: Category(
                                            id: '4',
                                            name: 'Outro',
                                            icon: Icons.help_outline,
                                            color: Color(0xFFc0d6df),
                                            route: AppRoutes.Ship,
                                          ),
                                        ),
                                      ],
                                    ),
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
      ),
    );
  }
}
