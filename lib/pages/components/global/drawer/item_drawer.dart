import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/utils/core.dart';

class ItemCategory extends StatelessWidget {
  final Category category;
  const ItemCategory(this.category);

  @override
  Widget build(BuildContext context) {
    _onTap(route) {
      Navigator.of(context).pushReplacementNamed(
        route,
      );
    }

    return Container(
      child: MouseRegion(
        child: InkWell(
          onTap: () => _onTap(category.route),
          mouseCursor: SystemMouseCursors.text,
          splashColor: Theme.of(context).primaryColor,
          // hoverColor: Theme.of(context).primaryColor,
          overlayColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          onHover: (_) {},
          child: ListTile(
            leading: Icon(
              category.icon,
              size: 28,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              category.name,
              style: AppTextStyles.heading20,
            ),
          ),
        ),
      ),
    );
  }
}
