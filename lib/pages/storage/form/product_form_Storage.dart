import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/storage.dart';
import 'package:mapbay/utils/app_colors.dart';

class ProductFormStorage extends StatefulWidget {
  final Storage? storage;
  final bool? isEditing;

  ProductFormStorage({this.storage, this.isEditing});

  @override
  _ProductFormStorageState createState() => _ProductFormStorageState();
}

class _ProductFormStorageState extends State<ProductFormStorage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Theme.of(context).hintColor.withOpacity(0.2),
            )),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.playlist_add_check_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 25,
                ),
                Text(
                  'Produtos',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).hintColor.withOpacity(0.2),
                  )),
              // width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.08,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      // color: Theme.of(context).primaryColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(50),
                            color:
                                Theme.of(context).accentColor.withOpacity(0.5),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(50),
                            color:
                                Theme.of(context).accentColor.withOpacity(0.5),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit,
                                size: 25,
                                color: Theme.of(context).primaryColor),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.1,
                    margin: EdgeInsets.only(right: 5),
                    child: TextField(
                      onChanged: (_) {},
                      decoration: InputDecoration(
                        labelText: 'Pesquisa',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.search), onPressed: () {}),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.grey,
              ),
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
