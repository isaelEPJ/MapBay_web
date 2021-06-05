import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/text_styles.dart';

class CanceledElevatedButton extends StatelessWidget {
  final String title;
  final void Function() onPress;
  CanceledElevatedButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.09,
      height: MediaQuery.of(context).size.height * 0.055,
      child: Tooltip(
        message: 'Salvar o registro',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.buttonBackColor.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColors.buttonBackColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 25,
                  ),
                ),
                Text(title, style: AppTextStyles.titleButton),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
