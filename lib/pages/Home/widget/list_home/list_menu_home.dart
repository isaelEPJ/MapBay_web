import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/data/category_dashboard.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/core.dart';

class ListMenuHome extends StatelessWidget {
  const ListMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25,
        top: 10,
      ),
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 89,
      child: ListView.builder(
          itemCount: CategoryDashboard.length,
          itemBuilder: (context, index) {
            final Category item = CategoryDashboard[index];
            return InkWell(
              onTap: () => Get.toNamed(item.route),
              child: Card(
                elevation: 20,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 5,
                        decoration: BoxDecoration(
                          color: AppColors.darkGreen,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: AppTextStyles.heading20,
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                item.icon,
                                size: 40,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
