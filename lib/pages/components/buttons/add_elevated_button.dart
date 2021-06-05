import 'package:flutter/material.dart';
import 'package:mapbay/utils/text_styles.dart';

class AddElevatedButton extends StatelessWidget {
  final String title;
  final void Function() onPress;
  AddElevatedButton({required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Tooltip(
        message: 'Adicionar novo registro',
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Icon(
                      Icons.add,
                      size: 30,
                    )),
                Expanded(
                    flex: 3,
                    child: Text(title, style: AppTextStyles.bodyLight20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
