import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/model/ship.dart';
import 'package:mapbay/pages/registers/ship/ship_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/app_images.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';

class CreateShip extends StatefulWidget {
  final ShipController controller;
  CreateShip(this.controller);
  @override
  _CreateShipState createState() => _CreateShipState();
}

class _CreateShipState extends State<CreateShip> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String imageUrl = '';
  String document = '';
  String responsible = '';
  String fabrication = '';
  String brand = '';
  String contact = '';
  double capacity = 0.0;
  double width = 0.0;
  double height = 0.0;
  double lenght = 0.0;
  double weight = 0.0;

  Future<void> _savingData() async {
    final validation = _formKey.currentState!.validate();
    if (!validation) {
      return null;
    }
    try {
      _formKey.currentState!.save();

      // widget.controller.create(
      //   name,
      //   imageUrl,
      //   document,
      //   responsible,
      //   fabrication,
      //   brand,
      //   contact,
      //   capacity,
      //   width,
      //   height,
      //   lenght,
      //   weight,
      // );
      _formKey.currentState?.reset();
      _formKey.currentState?.dispose();

      Get.defaultDialog(
        title: 'Sucesso! ',
        content: Text('Embarcaçao Cadastrado com sucesso'),
        confirm: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultElevatedButton(
              title: 'Concluir',
              onPress: () {
                Get.offNamed(AppRoutes.HOME);
              },
              icon: Icon(Icons.check),
              borderColor: AppColors.darkGreen,
              color: AppColors.darkGreen.withOpacity(0.7),
              tooltip: 'Voltar para a tela inicial do sistema',
            ),
            DefaultElevatedButton(
              title: 'Continue',
              onPress: () {
                Get.back();
              },
              icon: Icon(Icons.check),
              borderColor: Theme.of(context).primaryColor,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              tooltip: 'Cadastrar outro Embarcaçao',
            ),
          ],
        ),
      );

      // Get.offNamed(AppRoutes.ship);
    } catch (err) {
      Get.dialog(
        Container(
          child: Scaffold(
            body: Card(
              child: Center(
                child: Text('Ocorreu um erro no no cadastro do Embarcaçao'),
              ),
            ),
          ),
        ),
      );
    }
  }

  Future<void> _editship(String id) async {
    final validation = _formKey.currentState!.validate();
    if (!validation) {
      return null;
    }
    try {
      _formKey.currentState!.save();

      // widget.controller.updateship(
      //   name,
      //   imageUrl,
      //   document,
      //   responsible,
      //   fabrication,
      //   brand,
      //   contact,
      //   capacity,
      //   width,
      //   height,
      //   lenght,
      //   weight,
      // );

      _formKey.currentState?.reset();
      _formKey.currentState?.dispose();

      Get.defaultDialog(
        title: 'Sucesso! ',
        content: Text('Embarcaçao Cadastrado com sucesso'),
        confirm: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DefaultElevatedButton(
              title: 'Concluir',
              onPress: () {
                Get.offNamed(AppRoutes.HOME);
              },
              icon: Icon(Icons.check),
              borderColor: AppColors.darkGreen,
              color: AppColors.darkGreen.withOpacity(0.7),
              tooltip: 'Voltar para a tela inicial do sistema',
            ),
            DefaultElevatedButton(
              title: 'Continue',
              onPress: () {
                Get.back();
              },
              icon: Icon(Icons.check),
              borderColor: Theme.of(context).primaryColor,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              tooltip: 'Cadastrar outro Embarcaçao',
            ),
          ],
        ),
      );

      // Get.offNamed(AppRoutes.ship);
    } catch (err) {
      Get.dialog(
        Container(
          child: Scaffold(
            body: Card(
              child: Center(
                child: Text('Ocorreu um erro no no cadastro do Embarcaçao'),
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool _isEditing = false;

    final ship = ModalRoute.of(context)!.settings.arguments as Ship?;
    if (ship != null) {
      _isEditing = true;
    }
//  bool _active = controller.;
    bool _typeUser = true;
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Cadastrar Embarcaçao'),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: ExactAssetImage(AppImages.handshakeClient),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.2),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.directions_boat_outlined,
                                  color: Theme.of(context).primaryColor,
                                  size: 25,
                                ),
                                Text(
                                  ' Nova Embarcaçao',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 05),
                              // width: MediaQuery.of(context).size.width * 0.33,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          child: _isEditing
                                              ? TextFormField(
                                                  onSaved: (value) {
                                                    name = value!;
                                                  },
                                                  initialValue: ship!
                                                      .ship_number
                                                      .toString(),
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      labelText: 'Codigo',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  onSaved: (value) {
                                                    name = value!;
                                                  },
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      labelText: 'Codigo',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        _isEditing
                                            ? Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                child: Text(
                                                    '*Cadastrado em 03/08/2055*'),
                                              )
                                            : Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                child: Text(
                                                    '*Cadastrado em 03/08/2055*'),
                                              ),
                                        _isEditing
                                            ? Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                child: Text(
                                                    '*Ultima alteraçao em 18/02/2066*'),
                                              )
                                            : Container(
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
                                            // Switch.adaptive(
                                            //     value: _active,
                                            //     onChanged: (value) {}),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.47,
                                          child: _isEditing
                                              ? TextFormField(
                                                  onSaved: (value) {
                                                    name = value!;
                                                  },
                                                  initialValue: ship!.name,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'Nome da Embarcaçao',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                )
                                              : TextFormField(
                                                  onSaved: (value) {
                                                    name = value!;
                                                  },
                                                  controller: widget.controller
                                                      .nameController,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'Nome da Embarcaçao',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.47,
                                          child: _isEditing
                                              ? TextFormField(
                                                  onSaved: (value) {
                                                    responsible = value!;
                                                  },
                                                  initialValue: ship!.name,
                                                  decoration: InputDecoration(
                                                      labelText: 'Responsavel',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                )
                                              : TextFormField(
                                                  onSaved: (value) {
                                                    responsible = value!;
                                                  },
                                                  controller: widget.controller
                                                      .responsibleController,
                                                  decoration: InputDecoration(
                                                      labelText: 'Responsavel',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.22,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contact = value!;
                                                  },
                                                  initialValue: ship!.document,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'Documento da embarcaçao',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contact = value!;
                                                  },
                                                  controller: widget.controller
                                                      .documentController,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'Documento da embarcaçao',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    fabrication = value!;
                                                  },
                                                  initialValue: ship!
                                                      .fabrication
                                                      .toString(),
                                                  decoration: InputDecoration(
                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                          Icons.date_range),
                                                      onPressed: () {},
                                                    ),
                                                    labelText: 'Fabricaçao',
                                                    labelStyle: TextStyle(
                                                        color: Theme.of(context)
                                                            .accentColor),
                                                  ),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O Campo é obrigatorio';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    fabrication = value!;
                                                  },
                                                  controller: widget
                                                      .controller.cepController,
                                                  decoration: InputDecoration(
                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                          Icons.date_range),
                                                      onPressed: () {},
                                                    ),
                                                    labelText: 'Fabricaçao',
                                                    labelStyle: TextStyle(
                                                        color: Theme.of(context)
                                                            .accentColor),
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.23,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contact = value!;
                                                  },
                                                  initialValue: ship!.contact,
                                                  decoration: InputDecoration(
                                                      labelText: 'Contato',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contact = value!;
                                                  },
                                                  controller: widget.controller
                                                      .contactController,
                                                  decoration: InputDecoration(
                                                      labelText: 'Contato',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.23,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    } else if (value.length >
                                                        30) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    brand = value!;
                                                  },
                                                  initialValue: ship!.brand,
                                                  decoration: InputDecoration(
                                                      labelText: 'Marca',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    } else if (value.length >
                                                        30) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    brand = value!;
                                                  },
                                                  controller: widget.controller
                                                      .bairroController,
                                                  decoration: InputDecoration(
                                                      labelText: 'Marca',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    child: DefaultElevatedButton(
                                      title: 'Sair',
                                      borderColor: Theme.of(context).errorColor,
                                      color: Theme.of(context)
                                          .errorColor
                                          .withOpacity(0.6),
                                      onPress: () {
                                        Get.offNamed(AppRoutes.Ship);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 25,
                                      ),
                                      tooltip: 'Voltar a tela inicial',
                                    ),
                                  ),
                                  _isEditing
                                      ? Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          child: DefaultElevatedButton(
                                            title: 'Salvar',
                                            borderColor: AppColors.darkGreen,
                                            color: AppColors.darkGreen,
                                            onPress: () => _editship(ship!.id),
                                            icon: Icon(
                                              Icons.check,
                                              size: 25,
                                            ),
                                            tooltip: 'Salvar Cadastro',
                                          ),
                                        )
                                      : Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          child: DefaultElevatedButton(
                                            title: 'Salvar',
                                            borderColor: AppColors.darkGreen,
                                            color: AppColors.darkGreen,
                                            onPress: _savingData,
                                            icon: Icon(
                                              Icons.check,
                                              size: 25,
                                            ),
                                            tooltip: 'Salvar Cadastro',
                                          ),
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
    );
  }
}
