import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/utils/appRoutes.dart';
import 'package:mapbay/utils/text_styles.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  CustomAppbar(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.18,
            child: Text(
              ' $title',
              style: AppTextStyles.title,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                TextButton(
                  child: Text(
                    'Home',
                    style: AppTextStyles.appBarTextItems,
                  ),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).backgroundColor,
                    textStyle: AppTextStyles.appBarTextItems,
                  ),
                  onPressed: () {
                    Get.offNamed(AppRoutes.HOME);
                  },
                ),
                TextButton(
                  child: Text(
                    'Armazenagem',
                    style: AppTextStyles.appBarTextItems,
                  ),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    textStyle: AppTextStyles.appBarTextItems,
                  ),
                  onPressed: () {
                    Get.offNamed(AppRoutes.Storage);
                  },
                ),
                TextButton(
                  child: Text(
                    'Operaçao',
                    style: AppTextStyles.appBarTextItems,
                  ),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    textStyle: AppTextStyles.appBarTextItems,
                  ),
                  onPressed: () {
                    Get.offNamed(AppRoutes.Operation);
                  },
                ),
                TextButton(
                  child: Text(
                    'Carregamento',
                    style: AppTextStyles.appBarTextItems,
                  ),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    textStyle: AppTextStyles.appBarTextItems,
                  ),
                  onPressed: () {
                    Get.offNamed(AppRoutes.Boarding);
                  },
                ),
                TextButton(
                  child: Text(
                    'Descarregamento',
                    style: AppTextStyles.appBarTextItems,
                  ),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                    textStyle: AppTextStyles.appBarTextItems,
                  ),
                  onPressed: () {
                    Get.offNamed(AppRoutes.Unload);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
