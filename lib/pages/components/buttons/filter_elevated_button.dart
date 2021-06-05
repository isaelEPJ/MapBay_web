import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/core.dart';

class FilterElevatedButton extends StatelessWidget {
  final String title;
  final void Function() onPress;
  FilterElevatedButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.075,
      height: MediaQuery.of(context).size.height * 0.065,
      child: Tooltip(
        message: 'Filtrar um registro',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).accentColor.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Theme.of(context).accentColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.filter_alt_outlined,
                      size: 25,
                    )),
                Expanded(
                    flex: 2,
                    child: Text(title, style: AppTextStyles.titleButton)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
