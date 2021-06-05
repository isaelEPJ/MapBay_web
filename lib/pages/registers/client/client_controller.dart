import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/model/client.dart';
import 'package:mapbay/pages/registers/client/repository/client_interface_repository.dart';

class ClientController extends GetxController with StateMixin {
  final IClientInterface _clientRepository;
  ClientController(this._clientRepository);

  @override
  void onInit() {
    super.onInit();
    _findClients();
  }

  Future<void> _findClients() async {
    change([], status: RxStatus.loading());

    try {
      final dados = await _clientRepository.findAllClients();
      change(dados, status: RxStatus.success());
    } catch (error) {
      print(error);
      change([], status: RxStatus.error('Erro ao carregar os cleintes'));
    }
  }

  final nameController = TextEditingController();
  final fantasyNameController = TextEditingController();
  final cpfOrCnpjController = TextEditingController();
  // gerais
  final contato1Controller = TextEditingController();
  final contato2Controller = TextEditingController();
  final emailController = TextEditingController();

  // endereço
  final cepController = TextEditingController();
  final stateController = TextEditingController();
  final districtController = TextEditingController();
  final cityController = TextEditingController();
  final adressController = TextEditingController();
  final referenceController = TextEditingController();
  // observaçao
  final observationController = TextEditingController();

  Future<void> createclient(
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
  ) async {
    change([], status: RxStatus.loading());

    try {
      Client newClient = new Client(
        name: name,
        fantasyName: fantasyName,
        email: email,
        cpfOrCnpj: cpfOrCnpj,
        contact1: contato1,
        contact2: contato2,
        cep: cep,
        state: estado,
        district: bairro,
        city: cidade,
        adress: adress,
        reference: reference,
        observations: observations,
        storagesId: [],
        isActivate: true,
        isPerson: true,
        hasDebit: false,
        valueToReceive: '0',
        valueToPay: '0',
      );
      _clientRepository.createClient(
        newClient.name,
        newClient.fantasyName,
        newClient.email,
        newClient.cpfOrCnpj,
        newClient.contact1,
        newClient.contact2,
        newClient.cep,
        newClient.state,
        newClient.district,
        newClient.city,
        newClient.adress,
        newClient.reference,
        newClient.observations,
        newClient.storagesId,
        newClient.isPerson,
        newClient.hasDebit,
        newClient.isActivate,
        newClient.valueToReceive,
        newClient.valueToPay,
      );
      change(newClient, status: RxStatus.success());
    } catch (error) {
      print(error);
      change([], status: RxStatus.error('erro: $error'));
    }
  }

  @override
  void dispose() {
    _findClients();
    super.dispose();
  }

  Future<void> updateClient(
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
  ) async {
    change([], status: RxStatus.loading());

    try {
      Client newClient = new Client(
        name: name,
        fantasyName: fantasyName,
        email: email,
        cpfOrCnpj: cpfOrCnpj,
        contact1: contato1,
        contact2: contato2,
        cep: cep,
        state: estado,
        district: bairro,
        city: cidade,
        adress: adress,
        reference: reference,
        observations: observations,
        storagesId: [],
        isActivate: true,
        isPerson: true,
        hasDebit: false,
        valueToReceive: '0',
        valueToPay: '0',
      );
      _clientRepository.updateClient(
        id,
        newClient.name,
        newClient.fantasyName,
        newClient.email,
        newClient.cpfOrCnpj,
        newClient.contact1,
        newClient.contact2,
        newClient.cep,
        newClient.state,
        newClient.district,
        newClient.city,
        newClient.adress,
        newClient.reference,
        newClient.observations,
        newClient.storagesId,
        newClient.isPerson,
        newClient.hasDebit,
        newClient.isActivate,
        newClient.valueToReceive,
        newClient.valueToPay,
      );
      change(newClient, status: RxStatus.success());
    } catch (error) {
      print(error);
      change([], status: RxStatus.error('erro: $error'));
    }
  }
}
