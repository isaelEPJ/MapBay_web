import 'package:flutter/material.dart';
import 'package:mapbay/pages/Home/widget/dashboard/dashboard.dart';
import 'package:mapbay/pages/Home/widget/list_home/list_menu_home.dart';
import 'package:mapbay/pages/components/global/appbar.dart';
import 'package:mapbay/pages/components/global/drawer/main_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomAppbar('Dashboard'),
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.89,
              color: Theme.of(context).backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 1, child: ListMenuHome()),
                  Expanded(flex: 3, child: DashBoardHome()),
                ],
              ),
            ),
          ),
        ));
  }
}
