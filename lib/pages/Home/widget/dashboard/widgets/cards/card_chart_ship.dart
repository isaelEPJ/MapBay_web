import 'package:flutter/material.dart';
import 'package:mapbay/utils/app_colors.dart';
import 'package:mapbay/utils/text_styles.dart';

class CardChartShip extends StatefulWidget {
  CardChartShip({Key? key}) : super(key: key);

  @override
  _CardChartShipState createState() => _CardChartShipState();
}

class _CardChartShipState extends State<CardChartShip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      height: MediaQuery.of(context).size.height * 0.43,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 20,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(20),
                        child: CircularProgressIndicator(
                          backgroundColor: AppColors.whiteBackground,
                          value: .7,
                          strokeWidth: 10,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.darkGreen),
                        ),
                      ),
                      Text(
                        '4/6',
                        style: AppTextStyles.heading40,
                      )
                    ],
                  ),
                  Container(
                      width: 200,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Embarcaçoes',
                            style: AppTextStyles.heading,
                          ),
                          Text(
                            'Quantidade de embarcaçoes em uso',
                            style: AppTextStyles.heading15,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
