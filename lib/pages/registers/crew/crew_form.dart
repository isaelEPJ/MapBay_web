import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/registers/crew/crew_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/utils/app_colors.dart';

class CreateCrew extends StatefulWidget {
  @override
  _CreateCrewState createState() => _CreateCrewState();
}

class _CreateCrewState extends State<CreateCrew> {
  final creController = CrewController();
  bool _active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tripulaçao'),
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
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'lib/assets/images/crew_security.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: MediaQuery.of(context).size.width * 0.51,
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.4),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.contacts_sharp,
                                  color: Theme.of(context).primaryColor,
                                  size: 25,
                                ),
                                Text(
                                  ' Novo Tripulante',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Form(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          child: TextFormField(
                                            enabled: false,
                                            controller:
                                                creController.codeController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Codigo',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          child: Text(
                                              '*Cadastrado em 03/08/2055*'),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          child: Text(
                                              '*Ultima alteraçao em 18/02/2066*'),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text('Ativo'),
                                            Switch.adaptive(
                                                value: _active,
                                                onChanged: (value) {
                                                  setState(() {
                                                    _active = value;
                                                  });
                                                }),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.27,
                                          child: TextFormField(
                                            controller:
                                                creController.nameController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Nome',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                          child: TextFormField(
                                            controller: creController
                                                .inscricaoEstadualController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'RG',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08,
                                          child: TextFormField(
                                            controller:
                                                creController.idadeController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Idade',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                          child: TextFormField(
                                            controller:
                                                creController.cpfController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'CPF',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.22,
                                          child: TextFormField(
                                            controller:
                                                creController.emailController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'E-mail',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.14,
                                          child: TextFormField(
                                            controller: creController
                                                .contato1Controller,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Contato',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        // Container(
                                        //   margin: EdgeInsets.only(top: 5),
                                        //   width: MediaQuery.of(context)
                                        //           .size
                                        //           .width *
                                        //       0.1,
                                        //   child: TextFormField(
                                        //     controller: creController
                                        //         .contato2Controller,
                                        //     decoration: InputDecoration(
                                        //         border: OutlineInputBorder(
                                        //           borderRadius:
                                        //               BorderRadius.circular(10),
                                        //         ),
                                        //         labelText: 'Motivo',
                                        //         labelStyle: TextStyle(
                                        //             color: Theme.of(context)
                                        //                 .accentColor)),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                          child: TextFormField(
                                            controller:
                                                creController.cepController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                suffixIcon: IconButton(
                                                  icon: Icon(
                                                      Icons.add_location_alt),
                                                  onPressed: () {},
                                                ),
                                                labelText: 'CEP',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18,
                                          child: TextFormField(
                                            controller:
                                                creController.estadoController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Estado',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18,
                                          child: TextFormField(
                                            controller:
                                                creController.bairroController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Bairro',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                          child: TextFormField(
                                            controller:
                                                creController.cidadeController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Cidade',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          child: TextFormField(
                                            controller: creController
                                                .adressReferenciaController,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: 'Funçao',
                                                labelStyle: TextStyle(
                                                    color: Theme.of(context)
                                                        .accentColor)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: TextFormField(
                                        controller:
                                            creController.observationController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            labelText: 'Observaçoes',
                                            labelStyle: TextStyle(
                                                color: Theme.of(context)
                                                    .accentColor)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.33,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: DefaultElevatedButton(
                                      title: 'Sair',
                                      borderColor: AppColors.darkRed,
                                      color: AppColors.lightRed,
                                      onPress: () {
                                        Get.offNamed(AppRoutes.Crew);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 25,
                                      ),
                                      tooltip: 'Voltar para a tela inicial',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: DefaultElevatedButton(
                                      title: 'Salvar',
                                      borderColor: AppColors.darkGreen,
                                      color: AppColors.lightGreen,
                                      onPress: () {
                                        Get.offNamed(AppRoutes.HOME);
                                      },
                                      icon: Icon(
                                        Icons.save_rounded,
                                        size: 25,
                                      ),
                                      tooltip: 'Voltar para a tela inicial',
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
