import 'package:flutter/material.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/text_styles.dart';

class SaveElevatedButton extends StatelessWidget {
  final String title;
  final Icon? icon;
  final void Function() onPress;
  SaveElevatedButton({required this.title, required this.onPress, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.08,
      height: MediaQuery.of(context).size.height * 0.055,
      child: Tooltip(
        message: 'Salvar o registro',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.darkGreen.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColors.darkGreen),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(child: icon!),
                Text(title, style: AppTextStyles.titleButton),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
