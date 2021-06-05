import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/model/storage.dart';
import 'package:mapbay/utils/appRoutes.dart';

class StorageItem extends StatefulWidget {
  final Storage? storage;
  StorageItem(this.storage);

  @override
  _StorageItemState createState() => _StorageItemState();
}

class _StorageItemState extends State<StorageItem> {
  @override
  Widget build(BuildContext context) {
    _openRegister(storage) {
      Get.offAllNamed(AppRoutes.CreateStorage, arguments: storage);
      //  Navigator.of(context)
      //     .pushReplacementNamed(AppRoutes.CreateStorage, arguments: storage);
    }

    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () => _openRegister(widget.storage),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).hintColor.withOpacity(0.1),
        ),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.12,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: EdgeInsets.all(1),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(widget.storage!.title!),
                  Text('R\$ ${widget.storage?.value?.toInt().toString()}'),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                      '${widget.storage?.initialDate}  |  ${widget.storage?.initialDate}'),
                  Text(widget.storage!.title!),
                ],
              ),
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // IconButton(
                  //     tooltip: 'Cancelar',
                  //     icon: Icon(
                  //       Icons.cancel_outlined,
                  //       size: 27,
                  //       color: Theme.of(context).errorColor,
                  //     ),
                  //     splashColor: Theme.of(context).primaryColor,
                  //     onPressed: () {}),
                  IconButton(
                    tooltip: 'Mais',
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.green[700],
                      size: 27,
                    ),
                    splashColor: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
