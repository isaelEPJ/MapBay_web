import 'package:flutter/material.dart';
import 'package:mapbay/pages/components/buttons/back_elevated_button.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/utils/app_colors.dart';

class FilterTabBar extends StatelessWidget {
  final void Function()
      filterOrdened; //ao clicar no icone de filtrar, possivelmente será ordenar
  final void Function() filterDate;
  final void Function() pressOnSearch;
  final void Function() changeOnSearch;
  final void Function() onClickBack;
  final void Function() onClickFilter;
  final void Function() onClickNew;
  const FilterTabBar({
    Key? key,
    required this.filterOrdened,
    required this.filterDate,
    required this.pressOnSearch,
    required this.changeOnSearch,
    required this.onClickBack,
    required this.onClickFilter,
    required this.onClickNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                // width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  maxLines: 1,
                  textInputAction: TextInputAction.search,
                  onChanged: (_) => changeOnSearch,
                  decoration: InputDecoration(
                    labelText: 'Pesquisar',
                    suffixIcon: IconButton(
                      onPressed: pressOnSearch,
                      icon: Icon(
                        Icons.search,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    tooltip: 'Ordenar',
                    icon: Icon(
                      Icons.filter_list,
                      size: 32,
                    ),
                    color: Theme.of(context).primaryColor,
                    splashColor: Theme.of(context).primaryColor,
                    onPressed: filterOrdened,
                  ),
                  IconButton(
                    tooltip: 'Pesquisar por Data',
                    icon: Icon(
                      Icons.date_range_outlined,
                      size: 30,
                    ),
                    color: Theme.of(context).primaryColor,
                    splashColor: Theme.of(context).primaryColor,
                    onPressed: filterDate,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Divider(),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: DefaultElevatedButton(
                        title: 'Voltar',
                        borderColor: AppColors.darkRed,
                        color: AppColors.lightRed,
                        onPress: onClickBack,
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                        tooltip: 'Voltar para tela anterior',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DefaultElevatedButton(
                        title: 'Novo',
                        borderColor: Theme.of(context).primaryColor,
                        color: AppColors.lightBlue,
                        onPress: onClickNew,
                        icon: Icon(
                          Icons.add,
                          size: 25,
                        ),
                        tooltip: 'Criar um Novo Cliente',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
