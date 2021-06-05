import 'dart:convert';

import 'package:flutter/material.dart';

class Client {
  String? client_number;
  String? id;
  String name;
  String fantasyName;
  String email;
  String cpfOrCnpj;
  String contact1;
  String contact2;
  String cep;
  String state;
  String district;
  String city;
  String adress;
  String? reference;
  String? observations;
  List<dynamic> storagesId;
  bool isPerson;
  bool hasDebit;
  bool isActivate;
  String? valueToReceive;
  String? valueToPay;
  DateTime? updated_at;
  DateTime? created_at;

  Client({
    this.client_number,
    this.id,
    required this.name,
    required this.fantasyName,
    required this.email,
    required this.cpfOrCnpj,
    required this.contact1,
    required this.contact2,
    required this.cep,
    required this.state,
    required this.district,
    required this.city,
    required this.adress,
    this.reference,
    this.observations,
    required this.storagesId,
    required this.isPerson,
    required this.hasDebit,
    required this.isActivate,
    this.valueToReceive,
    this.valueToPay,
    this.updated_at,
    this.created_at,
  });

  Map<String, dynamic> toMap() {
    return {
      'client_number': client_number,
      'id': id,
      'name': name,
      'fantasyName': fantasyName,
      'email': email,
      'cpfOrCnpj': cpfOrCnpj,
      'contact1': contact1,
      'contact2': contact2,
      'cep': cep,
      'state': state,
      'district': district,
      'city': city,
      'adress': adress,
      'reference': reference,
      'observations': observations,
      'storagesId': storagesId,
      'isPerson': isPerson,
      'hasDebit': hasDebit,
      'isActivate': isActivate,
      'valueToReceive': valueToReceive,
      'valueToPay': valueToPay,
      'updated_at': updated_at?.millisecondsSinceEpoch,
      'created_at': created_at?.millisecondsSinceEpoch,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      client_number: map['client_number'],
      id: map['id'],
      name: map['name'],
      fantasyName: map['fantasyName'],
      email: map['email'],
      cpfOrCnpj: map['cpfOrCnpj'],
      contact1: map['contact1'],
      contact2: map['contact2'],
      cep: map['cep'],
      state: map['state'],
      district: map['district'],
      city: map['city'],
      adress: map['adress'],
      reference: map['reference'],
      observations: map['observations'],
      storagesId: List<dynamic>.from(map['storagesId']),
      isPerson: map['isPerson'],
      hasDebit: map['hasDebit'],
      isActivate: map['isActivate'],
      valueToReceive: map['valueToReceive'],
      valueToPay: map['valueToPay'],
      updated_at: DateTime(2021),
      created_at: DateTime(2019),
      // updated_at: DateTime.fromMillisecondsSinceEpoch(map['updated_at']),
      // created_at: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Client.fromJson(String source) => Client.fromMap(json.decode(source));
}
