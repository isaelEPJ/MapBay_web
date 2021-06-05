import 'package:flutter/material.dart';
import 'package:mapbay/pages/Home/widget/dashboard/widgets/cards/card_chart_ship.dart';
import 'package:mapbay/pages/Home/widget/dashboard/widgets/cards/card_number_storages.dart';

class DashBoardHome extends StatefulWidget {
  DashBoardHome({Key? key}) : super(key: key);

  @override
  _DashBoardHomeState createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.89,
      child: Container(
        // color: Theme.of(context).accentColor,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardChartShip(),
                CardNumberStorages(),
                // TripChartCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
