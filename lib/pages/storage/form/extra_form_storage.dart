import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/storage.dart';

class ExtraFormStorage extends StatefulWidget {
  final Storage? storage;
  final bool? isEditing;
  ExtraFormStorage({this.storage, this.isEditing});

  @override
  _ExtraFormStorageState createState() => _ExtraFormStorageState();
}

class _ExtraFormStorageState extends State<ExtraFormStorage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).hintColor.withOpacity(0.2),
                  )),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.map,
                        color: Theme.of(context).primaryColor,
                        size: 25,
                      ),
                      Text(
                        'Endereço de entrega',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // color: Theme.of(context).hintColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              width: MediaQuery.of(context).size.width * 0.14,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Cep',
                                    prefixIcon: Icon(Icons.location_on),
                                    suffixIcon: IconButton(
                                        icon: Icon(Icons.search),
                                        onPressed: () {}),
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).accentColor)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    prefixIcon: Icon(Icons.map),
                                    labelText: 'Estado',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).accentColor)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    prefixIcon: Icon(Icons.map),
                                    labelText: 'Cidade',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).accentColor)),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    prefixIcon: Icon(Icons.map),
                                    labelText: 'Bairro',
                                    labelStyle: TextStyle(
                                        color: Theme.of(context).accentColor)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              // color: Theme.of(context).hintColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width * 0.62,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'Logradouro',
                                      prefixIcon: Icon(Icons.map),
                                      labelStyle: TextStyle(
                                          color:
                                              Theme.of(context).accentColor)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'Tipo de entrega',
                                      suffixIcon: Icon(Icons.arrow_drop_down),
                                      labelStyle: TextStyle(
                                          color:
                                              Theme.of(context).accentColor)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              // color: Theme.of(context).hintColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 2,
                                    onChanged: (newText) {},
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        labelText: 'Complemento',
                                        prefixIcon: Icon(Icons.map),
                                        labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).accentColor)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).hintColor.withOpacity(0.2),
                  )),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.speaker_notes_sharp,
                        color: Theme.of(context).primaryColor,
                        size: 25,
                      ),
                      Text(
                        'Observaçao',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // color: Theme.of(context).hintColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            onChanged: (newText) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: 'Digite aqui a Observaçao',
                              prefixIcon: Icon(Icons.edit),
                              labelStyle: TextStyle(
                                  color: Theme.of(context).accentColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Theme.of(context).hintColor.withOpacity(0.2),
                  )),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.image,
                        color: Theme.of(context).primaryColor,
                        size: 25,
                      ),
                      Text(
                        'Imagens',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // color: Theme.of(context).hintColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[],
                    ),
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
