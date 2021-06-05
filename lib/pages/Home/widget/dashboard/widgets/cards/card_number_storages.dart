import 'package:flutter/material.dart';
import 'package:mapbay/utils/text_styles.dart';

class CardNumberStorages extends StatefulWidget {
  CardNumberStorages({Key? key}) : super(key: key);

  @override
  _CardNumberStoragesState createState() => _CardNumberStoragesState();
}

class _CardNumberStoragesState extends State<CardNumberStorages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      height: MediaQuery.of(context).size.height * 0.43,
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Armazenagens',
              style: AppTextStyles.heading40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '343',
                      style: AppTextStyles.heading40,
                    ),
                    Text(
                      'Realizadas',
                      style: AppTextStyles.heading20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '11',
                      style: AppTextStyles.bodyDarkGreen,
                    ),
                    Text(
                      ' Pendentes',
                      style: AppTextStyles.heading20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '05',
                      style: AppTextStyles.bodyDarkRed,
                    ),
                    Text(
                      'Canceladas',
                      style: AppTextStyles.heading20,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
