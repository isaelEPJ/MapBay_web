import 'package:mapbay/pages/model/client.dart';

abstract class IClientInterface {
  Future<List<Client>?> findAllClients();
  Future<void> createClient(
    String? name,
    String? fantasyName,
    String? email,
    String? cpfOrCnpj,
    String? contact1,
    String? contact2,
    String? cep,
    String? state,
    String? district,
    String? city,
    String? adress,
    String? reference,
    String? observations,
    List<dynamic> storagesId,
    bool? isPerson,
    bool? hasDebit,
    bool? isActivate,
    String? valueToReceive,
    String? valueToPay,
  );
  Future<void> updateClient(
    String id,
    String? name,
    String? fantasyName,
    String? email,
    String? cpfOrCnpj,
    String? contact1,
    String? contact2,
    String? cep,
    String? state,
    String? district,
    String? city,
    String? adress,
    String? reference,
    String? observations,
    List<dynamic> storagesId,
    bool? isPerson,
    bool? hasDebit,
    bool? isActivate,
    String? valueToReceive,
    String? valueToPay,
  );
}
