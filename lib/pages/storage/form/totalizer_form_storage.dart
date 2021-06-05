import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/components/buttons/default_register_button.dart';
import 'package:mapbay/utils/core.dart';

class TotalizerFormStorage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.only(right: 17, bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        Get.offNamed(AppRoutes.Storage);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).accentColor,
                      ),
                      label: Text(
                        'Voltar para Armazenagens',
                        style: TextStyle(
                            fontSize: 18, color: Theme.of(context).accentColor),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '3x de 100',
                        style: AppTextStyles.bodyBold,
                      ),
                      Text(
                        'R\$ 300',
                        style: AppTextStyles.body20,
                      ),
                    ],
                  ),
                ),

                DefaultElevatedButton(
                  title: 'Cancelar',
                  borderColor: AppColors.darkRed,
                  color: AppColors.darkRed.withOpacity(0.6),
                  onPress: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    size: 25,
                  ),
                  tooltip: 'Cancelar Registro',
                ),
                DefaultElevatedButton(
                  title: 'Salvar  ',
                  borderColor: AppColors.darkGreen,
                  color: AppColors.darkGreen.withOpacity(0.6),
                  onPress: () {},
                  icon: Icon(
                    Icons.save,
                    size: 25,
                  ),
                  tooltip: 'Salvar Registro para concluir depois',
                ),
                DefaultElevatedButton(
                  title: 'Concluir',
                  borderColor: Theme.of(context).primaryColor,
                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                  onPress: () {},
                  icon: Icon(
                    Icons.check,
                    size: 25,
                  ),
                  tooltip: 'Concluir Registro',
                ),
                // SaveElevatedButton(title: 'Salvar', onPress: () {}),
                // ConcludeElevatedButton(title: 'Concluir', onPress: () {})
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
