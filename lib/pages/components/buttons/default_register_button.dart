import 'package:flutter/material.dart';
import 'package:mapbay/utils/text_styles.dart';

class DefaultElevatedButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final void Function() onPress;
  final Color borderColor;
  final Color color;
  final String? tooltip;
  DefaultElevatedButton({
    required this.title,
    required this.onPress,
    required this.icon,
    required this.borderColor,
    required this.color,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.13,
      height: MediaQuery.of(context).size.height * 0.055,
      child: Tooltip(
        message: tooltip!,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: icon,
          label: Text(title, style: AppTextStyles.titleButton),
          onPressed: onPress,
        ),
      ),
    );
  }
}
