import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/filter_tab_bar.dart';
import 'package:mapbay/pages/model/client.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';
import 'package:mapbay/pages/registers/client/client_controller.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/core.dart';

class ClientPage extends StatefulWidget {
  final ClientController controller;
  ClientPage(this.controller);
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  void _handleClickItem(Client client) {
    Get.toNamed(AppRoutes.CreateClient, arguments: client);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar('Clientes'),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_page_rounded,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                    Text(
                      ' Pesquisar Clientes',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FilterTabBar(
                      onClickNew: () {
                        Get.offNamed(AppRoutes.CreateClient);
                      },
                      onClickFilter: () {
                        print('Abrir modal para filtrar');
                      },
                      onClickBack: () {
                        Get.offNamed(AppRoutes.HOME);
                      },
                      filterOrdened: () {
                        print('abrir modal para realizar ordenamento');
                      },
                      filterDate: () {
                        print('abrir datepicker para pesquisar por data');
                      },
                      pressOnSearch: () {
                        print('o que fazer ao clicar na lupa de pesquisar');
                      },
                      changeOnSearch: () {
                        print('o que fazer no onchange, ao alterar textfield');
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Container(
                                  child: widget.controller.obx((state) {
                                    return state == null
                                        ? CircularProgressIndicator()
                                        : ListView.builder(
                                            itemCount: state.length,
                                            itemBuilder: (context, index) {
                                              final Client client =
                                                  state[index];
                                              return Container(
                                                child: Column(
                                                  children: [
                                                    ListTile(
                                                      onTap: () =>
                                                          _handleClickItem(
                                                              client),
                                                      leading: Container(
                                                        child: Center(
                                                            child: Text(
                                                          client.client_number!,
                                                          style: AppTextStyles
                                                              .appBarTextItems,
                                                        )),
                                                        width: 60,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                        ),
                                                      ),
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            client.name,
                                                            style: AppTextStyles
                                                                .heading,
                                                          ),
                                                        ],
                                                      ),
                                                      subtitle: Text(
                                                        client.cpfOrCnpj
                                                            .toString(),
                                                        style: AppTextStyles
                                                            .heading15,
                                                      ),
                                                      trailing: IconButton(
                                                        icon: Icon(Icons
                                                            .more_vert_outlined),
                                                        onPressed: () {
                                                          // irá dar as opçoes 1:remover 2: ?
                                                        },
                                                      ),
                                                    ),
                                                    Divider(),
                                                  ],
                                                ),
                                              );
                                            });
                                  }, onError: (error) {
                                    print(error);
                                    return Column(
                                      children: [
                                        Text('deu erro: $error'),
                                      ],
                                    );
                                  }),
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
