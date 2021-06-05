import 'package:flutter/material.dart';

class StorageFilter extends StatefulWidget {
  StorageFilter({Key? key}) : super(key: key);

  @override
  _StorageFilterState createState() => _StorageFilterState();
}

class _StorageFilterState extends State<StorageFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: Center(
        child: Column(
          children: <Widget>[
            Text('voce tem certeza que deseja fazer alguma coisa?'),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ok'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
