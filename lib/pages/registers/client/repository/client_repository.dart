import 'package:mapbay/database/rest_client_getx.dart';
import 'package:mapbay/pages/model/client.dart';
import 'package:mapbay/pages/registers/client/repository/client_interface_repository.dart';

class ClientRepository implements IClientInterface {
  final RestClient restClient;
  ClientRepository(this.restClient);

  @override
  Future<List<Client>?> findAllClients() async {
    try {
      final response = await restClient
          .get('https://6089321d8c8043001757e30d.mockapi.io/clients',
              decoder: (body) {
        if (body is List) {
          return body.map<Client>((data) => Client.fromMap(data)).toList();
        }
        return null;
      });
      if (response.hasError) {
        print(response.statusText);
        throw Exception('Erro ao carregar clientes');
      }
      return response.body;
    } catch (error) {
      print(error);
      rethrow;
    }

    // print(response.body);
    // return response.body;
  }

  // @override
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
  ) async {
    try {
      final request = await restClient
          .post('https://6089321d8c8043001757e30d.mockapi.io/clients', {
        "name": name,
        "fantasyName": fantasyName,
        "email": email,
        "cpfOrCnpj": cpfOrCnpj,
        "contact2": contact1,
        "rgOrIe": contact2,
        "cep": cep,
        "state": state,
        "district": district,
        "city": city,
        "referencia": reference,
        "observations": observations,
        "storagesId": storagesId,
        "isPf": isPerson,
        "isActivate": isActivate,
        "hasDebit": hasDebit,
        "valueToReceive": valueToReceive,
        "valueToPay": valueToPay,
      });

      if (request.hasError) {
        print('${request.statusCode}: ${request.statusText}');

        throw Exception('Erro ao carregar clientes');
      }
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<void> updateClient(
    String? id,
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
  ) async {
    try {
      final request = await restClient
          .put('https://6089321d8c8043001757e30d.mockapi.io/clients/$id', {
        "name": name,
        "fantasyName": fantasyName,
        "email": email,
        "cpfOrCnpj": cpfOrCnpj,
        "contact2": contact1,
        "rgOrIe": contact2,
        "cep": cep,
        "state": state,
        "district": district,
        "city": city,
        "referencia": reference,
        "observations": observations,
        "storagesId": storagesId,
        "isPf": isPerson,
        "isActivate": isActivate,
        "hasDebit": hasDebit,
        "valueToReceive": valueToReceive,
        "valueToPay": valueToPay,
      });

      if (request.hasError) {
        print('${request.statusCode}: ${request.statusText}');

        throw Exception('Erro ao carregar clientes');
      }
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
