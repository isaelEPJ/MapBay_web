import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/operation.dart';
import 'package:mapbay/utils/core.dart';

class OperationItem extends StatefulWidget {
  final Operation operation;
  OperationItem(this.operation);

  @override
  _OperationItemState createState() => _OperationItemState();
}

class _OperationItemState extends State<OperationItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () {},
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
                image: DecorationImage(
                  image: NetworkImage(widget.operation.imageURL),
                  fit: BoxFit.cover,
                ),
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
                  Text(
                    widget.operation.title,
                    style: AppTextStyles.heading,
                  ),
                  Text(
                    'R\$${widget.operation.id}',
                    style: AppTextStyles.body20,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.qr_code_outlined),
                      Text(
                        ' ${widget.operation.barCode}',
                        style: AppTextStyles.heading,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.date_range_outlined),
                      Text(
                        '${widget.operation.finalDate}',
                        style: AppTextStyles.body20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                      tooltip: 'Excluir',
                      icon: Icon(
                        Icons.highlight_remove_sharp,
                        size: 27,
                        color: Theme.of(context).errorColor,
                      ),
                      splashColor: Theme.of(context).primaryColor,
                      onPressed: () {}),
                  IconButton(
                    tooltip: 'Editar',
                    icon: Icon(
                      Icons.edit,
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
