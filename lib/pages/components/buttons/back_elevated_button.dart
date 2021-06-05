import 'package:flutter/material.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/core.dart';

class BackElevatedButton extends StatelessWidget {
  final String title;
  final void Function() onPress;
  BackElevatedButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Tooltip(
        message: 'Voltar para tela Anterior',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.buttonBackColor.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: AppColors.buttonBackColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                Expanded(
                    flex: 2,
                    child: Text(title, style: AppTextStyles.bodyLight20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
