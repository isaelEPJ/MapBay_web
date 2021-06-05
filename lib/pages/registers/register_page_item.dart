import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/text_styles.dart';

class RegisterItemPage extends StatelessWidget {
  final Category item;
  RegisterItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(item.route),
      child: Card(
        elevation: 20,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).size.height * 0.22,
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
  }
}
