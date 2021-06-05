import 'package:flutter/material.dart';
import 'package:mapbay/pages/components/global/drawer/item_drawer.dart';
import 'package:mapbay/pages/data/category_drawer.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/utils/app_images.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 30,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.theeRecalcImage),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 200,
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        trailing: IconButton(
                            tooltip: 'Sair da Aplicaçao',
                            icon: Icon(
                              Icons.exit_to_app_rounded,
                              color: Theme.of(context).backgroundColor,
                            ),
                            onPressed: () {}),
                        leading: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/70731079?v=4'),
                            ),
                          ),
                        ),
                        title: Text(
                          'Isael Junior',
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              color: Theme.of(context).backgroundColor.withOpacity(0.5),
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width * 0.2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.76,
                child: ListView.builder(
                    itemCount: CategoryDrawer.length,
                    itemBuilder: (context, i) {
                      final Category categoryitem = CategoryDrawer[i];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ItemCategory(categoryitem),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
