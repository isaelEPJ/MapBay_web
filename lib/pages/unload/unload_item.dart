import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/boarding.dart';

class UnloadItem extends StatefulWidget {
  final Boarding boarding;
  UnloadItem(this.boarding);

  @override
  _UnloadItemState createState() => _UnloadItemState();
}

class _UnloadItemState extends State<UnloadItem> {
  @override
  Widget build(BuildContext context) {
    // if (widget.unload.showStatus == 1 ){
    //   iconStatus(Icons.)
    // }

    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nº ${widget.boarding.numberTrip.toString()}'),
                    if (widget.boarding.showStatus == 1)
                      Icon(
                        Icons.verified,
                        color: Colors.green,
                      )
                    else if (widget.boarding.showStatus == 2)
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                      )
                    else if (widget.boarding.showStatus == 3)
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.orange,
                      )
                    else
                      Icon(
                        Icons.device_unknown_sharp,
                        color: Colors.grey,
                      ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.qr_code_outlined),
                    Text(
                        '${widget.boarding.barCodes!.length.toString()} Etiquetas'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.date_range_outlined,
                      color: Colors.green.shade400,
                    ),
                    Text(
                      widget.boarding.initialDate!,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.date_range_outlined,
                      color: Colors.grey,
                    ),
                    Text(
                      widget.boarding.finalDate!,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.directions_boat_outlined,
                      color: Colors.black26,
                    ),
                    Text(
                      '${widget.boarding.ship!.name} | Nº${widget.boarding.numberTrip}',
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
