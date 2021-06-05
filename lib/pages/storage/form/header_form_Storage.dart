import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/storage.dart';

class HeaderFormStorage extends StatefulWidget {
  final bool? isEditing;
  final Storage? storage;

  HeaderFormStorage({this.isEditing, this.storage});

  @override
  _HeaderFormStorageState createState() => _HeaderFormStorageState();
}

class _HeaderFormStorageState extends State<HeaderFormStorage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Theme.of(context).hintColor.withOpacity(0.2),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.contact_mail,
                  color: Theme.of(context).primaryColor,
                  size: 25,
                ),
                Text(
                  ' Dados Gerais',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      // width: MediaQuery.of(context).size.width * 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.17,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? '${widget.storage!.document}'
                                  : '',
                              enabled: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon:
                                      Icon(Icons.confirmation_number_outlined),
                                  labelText: 'Documento',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? '${widget.storage!.initialDate}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.date_range),
                                  labelText: 'Data de criaçao',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? '${widget.storage!.initialDate}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.date_range),
                                  labelText: 'Alterado em',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? widget.storage!.client?.name
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.search),
                                      onPressed: () {}),
                                  labelText: 'Cliente',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.contact_mail_outlined),
                                  labelText: 'CPF/CNPJ',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? '${widget.storage!.nameResponsible}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.perm_contact_cal),
                                  labelText: 'Nome do responsavel',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.27,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.contact_mail_outlined),
                                  labelText: 'Documento do Responsavel',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? widget.storage!.payment
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.payment_outlined),
                                  labelText: 'Pagamento',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? 'R\$${widget.storage!.taxa.toString()}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.attach_money_rounded),
                                  labelText: 'Taxa',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? 'R\$${widget.storage!.discount.toString()}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.local_offer_outlined),
                                  labelText: 'Descontos',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? 'R\$${widget.storage!.taxa.toString()}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Valor em KG (R\$)',
                                  prefixIcon: Icon(Icons.anchor_rounded),
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: TextFormField(
                              initialValue: widget.isEditing!
                                  ? 'R\$${widget.storage!.taxa.toString()}'
                                  : '',
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.anchor_rounded),
                                  labelText: 'Valor em M³ (R\$)',
                                  labelStyle: TextStyle(
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
