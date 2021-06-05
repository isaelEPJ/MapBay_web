import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/model/client.dart';
import 'package:mapbay/pages/registers/client/client_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/app_images.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/utils/core.dart';

class CreateClient extends StatefulWidget {
  final ClientController controller;
  CreateClient({required this.controller});
  @override
  _CreateClientState createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String fantasyName = '';
  String email = '';
  String cpfOrCnpj = '';
  String contato1 = '';
  String contato2 = '';
  String cep = '';
  String estado = '';
  String cidade = '';
  String bairro = '';
  String adress = '';
  String reference = '';
  String observations = '';

  Future<void> _savingData() async {
    final validation = _formKey.currentState!.validate();
    if (!validation) {
      return null;
    }
    try {
      _formKey.currentState!.save();

      widget.controller.createclient(
        name,
        fantasyName,
        email,
        cpfOrCnpj,
        contato1,
        contato2,
        estado,
        cep,
        bairro,
        cidade,
        adress,
        reference,
        observations,
      );
      _formKey.currentState?.reset();
      _formKey.currentState?.dispose();

      Get.defaultDialog(
        title: 'Sucesso! ',
        content: Text(
          'Cliente Cadastrado com sucesso',
          style: AppTextStyles.heading20,
        ),
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
            SizedBox(width: 5),
            DefaultElevatedButton(
              title: 'Continue',
              onPress: () {
                Get.back();
              },
              icon: Icon(Icons.check),
              borderColor: Theme.of(context).primaryColor,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              tooltip: 'Cadastrar outro cliente',
            ),
          ],
        ),
      );

      // Get.offNamed(AppRoutes.Client);
    } catch (err) {
      Get.dialog(
        Container(
          child: Scaffold(
            body: Card(
              child: Center(
                child: Text('Ocorreu um erro no no cadastro do cliente'),
              ),
            ),
          ),
        ),
      );
    }
  }

  Future<void> _editClient(String id) async {
    final validation = _formKey.currentState!.validate();
    if (!validation) {
      return null;
    }
    try {
      _formKey.currentState!.save();

      widget.controller.updateClient(
        id,
        name,
        fantasyName,
        email,
        cpfOrCnpj,
        contato1,
        contato2,
        estado,
        cep,
        bairro,
        cidade,
        adress,
        reference,
        observations,
      );

      _formKey.currentState?.reset();
      _formKey.currentState?.dispose();

      Get.defaultDialog(
        title: 'Cliente Cadastrado com sucesso!',
        titleStyle: AppTextStyles.heading20,
        content: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.clientCelebration),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: DefaultElevatedButton(
                      title: 'Home',
                      onPress: () {
                        Get.offNamed(AppRoutes.HOME);
                      },
                      icon: Icon(Icons.home),
                      borderColor: AppColors.darkGreen,
                      color: AppColors.darkGreen.withOpacity(0.7),
                      tooltip: 'Voltar para a tela inicial do sistema',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DefaultElevatedButton(
                      title: 'Continue',
                      onPress: () {
                        Get.offNamed(AppRoutes.Client);
                      },
                      icon: Icon(Icons.check),
                      borderColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                      tooltip: 'Cadastrar outro cliente',
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      );

      // Get.offNamed(AppRoutes.Client);
    } catch (err) {
      Get.dialog(
        Container(
          child: Scaffold(
            body: Card(
              child: Center(
                child: Text('Ocorreu um erro no no cadastro do cliente'),
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

    final client = ModalRoute.of(context)!.settings.arguments as Client?;
    if (client != null) {
      _isEditing = true;
    }
//  bool _active = controller.;
    bool _typeUser = true;
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Cadastrar Cliente'),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.contact_page_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 25,
                          ),
                          Text(
                            ' Novo Cliente',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Stack(
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
                                    image: ExactAssetImage(
                                        AppImages.handshakeClient),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                                                  initialValue: client!
                                                      .client_number
                                                      .toString(),
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
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
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
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
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.475,
                                            child: _isEditing
                                                ? TextFormField(
                                                    onSaved: (value) {
                                                      name = value!;
                                                    },
                                                    initialValue: client!.name,
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        labelText:
                                                            'Nome / Razao Social',
                                                        labelStyle: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .accentColor)),
                                                    validator: (value) {
                                                      if (value!.length <= 10) {
                                                        return 'O nome deve conter no minimo 10 caracteres';
                                                      } else if (value.length >
                                                          100) {
                                                        return 'voce excedeu o limite de caracteres';
                                                      }
                                                      return null;
                                                    },
                                                  )
                                                : TextFormField(
                                                    onSaved: (value) {
                                                      name = value!;
                                                    },
                                                    controller: widget
                                                        .controller
                                                        .nameController,
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        labelText:
                                                            'Nome / Razao Social',
                                                        labelStyle: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .accentColor)),
                                                    validator: (value) {
                                                      if (value!.length <= 10) {
                                                        return 'O nome deve conter no minimo 10 caracteres';
                                                      } else if (value.length >
                                                          100) {
                                                        return 'voce excedeu o limite de caracteres';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.475,
                                            child: _isEditing
                                                ? TextFormField(
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return 'O campo é Obrigatório';
                                                      } else if (value.length >
                                                          100) {
                                                        return 'voce excedeu o limite de caracteres';
                                                      }
                                                      return null;
                                                    },
                                                    onSaved: (value) {
                                                      fantasyName = value!;
                                                    },
                                                    initialValue:
                                                        client!.fantasyName,
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        labelText:
                                                            'Apelido / Nome Fantasia',
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
                                                          100) {
                                                        return 'voce excedeu o limite de caracteres';
                                                      }
                                                      return null;
                                                    },
                                                    onSaved: (value) {
                                                      fantasyName = value!;
                                                    },
                                                    controller: widget
                                                        .controller
                                                        .fantasyNameController,
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        labelText:
                                                            'Apelido / Nome Fantasia',
                                                        labelStyle: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .accentColor)),
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
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.18,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isCpf ||
                                                        value.isCnpj) {
                                                      return null;
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return 'Deve preencher o cpf';
                                                  },
                                                  onSaved: (value) {
                                                    cpfOrCnpj = value!;
                                                  },
                                                  initialValue:
                                                      client!.cpfOrCnpj,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'CPF / CNPJ',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.isCpf ||
                                                        value.isCnpj) {
                                                      return null;
                                                    } else if (value.length >
                                                        30) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return 'Deve preencher o cpf';
                                                  },
                                                  onSaved: (value) {
                                                    cpfOrCnpj = value!;
                                                  },
                                                  controller: widget.controller
                                                      .cpfOrCnpjController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'CPF / CNPJ',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 10) {
                                                      return 'O nome deve conter no minimo 10 caracteres';
                                                    } else if (value.isEmail) {
                                                      return null;
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return 'Ocorreu um erro, preencha o email corretamente';
                                                  },
                                                  onSaved: (value) {
                                                    email = value!;
                                                  },
                                                  initialValue: client!.email,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'E-mail',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 10) {
                                                      return 'O nome deve conter no minimo 10 caracteres';
                                                    } else if (value.isEmail) {
                                                      return null;
                                                    } else if (value.length >
                                                        40) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return 'Ocorreu um erro, preencha o email corretamente';
                                                  },
                                                  onSaved: (value) {
                                                    email = value!;
                                                  },
                                                  controller: widget.controller
                                                      .emailController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'E-mail',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
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
                                              0.155,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        15) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contato1 = value!;
                                                  },
                                                  initialValue:
                                                      client!.contact1,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Contato 1',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        15) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contato1 = value!;
                                                  },
                                                  controller: widget.controller
                                                      .contato1Controller,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Contato 1',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.155,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        15) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contato2 = value!;
                                                  },
                                                  initialValue:
                                                      client!.contact2,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Contato 2',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (!value
                                                        .isPhoneNumber) {
                                                      return 'Deve preencher o contato corretamente';
                                                    } else if (value.length >
                                                        15) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    contato2 = value!;
                                                  },
                                                  controller: widget.controller
                                                      .contato2Controller,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Contato 2',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.155,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (value.length >
                                                        15) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    cep = value!;
                                                  },
                                                  initialValue:
                                                      client!.cep.toString(),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(Icons
                                                          .add_location_alt),
                                                      onPressed: () {},
                                                    ),
                                                    labelText: 'CEP',
                                                    labelStyle: TextStyle(
                                                        color: Theme.of(context)
                                                            .accentColor),
                                                  ),
                                                )
                                              : TextFormField(
                                                  validator: (value) {
                                                    if (value!.length <= 5) {
                                                      return 'O nome deve conter no minimo 5 digitos';
                                                    } else if (value.length >
                                                        10) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    cep = value!;
                                                  },
                                                  controller: widget
                                                      .controller.cepController,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(Icons
                                                          .add_location_alt),
                                                      onPressed: () {},
                                                    ),
                                                    labelText: 'CEP',
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
                                          margin: EdgeInsets.only(top: 5),
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
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    estado = value!;
                                                  },
                                                  initialValue: client!.state,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Estado',
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
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    estado = value!;
                                                  },
                                                  controller: widget.controller
                                                      .stateController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Estado',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.24,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    bairro = value!;
                                                  },
                                                  initialValue:
                                                      client!.district,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Bairro',
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
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    bairro = value!;
                                                  },
                                                  controller: widget.controller
                                                      .districtController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Bairro',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
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
                                              0.12,
                                          child: _isEditing
                                              ? TextFormField(
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'O campo é Obrigatório';
                                                    } else if (value.length >
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    cidade = value!;
                                                  },
                                                  initialValue: client!.city,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Cidade',
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
                                                        20) {
                                                      return 'voce excedeu o limite de caracteres';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    cidade = value!;
                                                  },
                                                  controller: widget.controller
                                                      .cityController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Cidade',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
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
                                                    adress = value!;
                                                  },
                                                  initialValue: client!.adress,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Logradouro',
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
                                                    adress = value!;
                                                  },
                                                  controller: widget.controller
                                                      .adressController,
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      labelText: 'Logradouro',
                                                      labelStyle: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .accentColor)),
                                                ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: _isEditing
                                          ? TextFormField(
                                              onSaved: (value) {
                                                reference = value!;
                                              },
                                              initialValue: client!.reference,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  labelText: 'Referencia',
                                                  labelStyle: TextStyle(
                                                      color: Theme.of(context)
                                                          .accentColor)),
                                            )
                                          : TextFormField(
                                              onSaved: (value) {
                                                reference = value!;
                                              },
                                              controller: widget.controller
                                                  .referenceController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  labelText: 'Referencia',
                                                  labelStyle: TextStyle(
                                                      color: Theme.of(context)
                                                          .accentColor)),
                                            ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: _isEditing
                                          ? TextFormField(
                                              onSaved: (value) {
                                                observations = value!;
                                              },
                                              initialValue:
                                                  client!.observations,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  labelText: 'Observaçoes',
                                                  labelStyle: TextStyle(
                                                      color: Theme.of(context)
                                                          .accentColor)),
                                            )
                                          : TextFormField(
                                              onSaved: (value) {
                                                observations = value!;
                                              },
                                              controller: widget.controller
                                                  .observationController,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                              padding: EdgeInsets.all(6),
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
                                      borderColor: AppColors.darkRed,
                                      color: AppColors.lightRed,
                                      onPress: () {
                                        Get.offNamed(AppRoutes.Client);
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
                                            color: AppColors.lightGreen,
                                            onPress: () =>
                                                _editClient(client!.id!),
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
                                            color: AppColors.lightGreen,
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
