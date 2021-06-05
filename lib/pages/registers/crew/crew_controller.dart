import 'package:flutter/material.dart';

class CrewController {
  // final Crew crew = new Crew();

  // final Crews = Crewdata;

  //! controller dos inputs de cadastro
  // pessoa fisica
  var codeController = TextEditingController();
  var nameController = TextEditingController();
  var cpfController = TextEditingController();
  var idadeController = TextEditingController();

  // pessoa Juridica
  var razaoSocialController = TextEditingController();
  var nomeFantasiaController = TextEditingController();
  var cnpjController = TextEditingController();
  var inscricaoEstadualController = TextEditingController();
  var responsavelController = TextEditingController();

  // gerais
  var contato1Controller = TextEditingController();
  var contato2Controller = TextEditingController();
  var emailController = TextEditingController();

  // endereço
  var cepController = TextEditingController();
  var estadoController = TextEditingController();
  var lagradouroController = TextEditingController();
  var cidadeController = TextEditingController();
  var bairroController = TextEditingController();
  var adressReferenciaController = TextEditingController();
  var adressLatitudeCrewController = TextEditingController();
  var adressLongitudeCrewController = TextEditingController();
  // observaçao
  var observationController = TextEditingController();

  onSubmitCreate() {}
}
