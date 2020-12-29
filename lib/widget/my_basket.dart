import 'package:flutter/material.dart';
import 'package:flutter_market/Helpers/color_helpers.dart';
import 'package:flutter_market/Helpers/text_helpers.dart';

class MyBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: buildTextHelpers(
            text: "Sepetim",
            size: 20.0,
            weight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          title: Text(
            'Çikolatalı Goflet',
          ),
          subtitle: Text("2 Adet x 3.50 TL"),
          trailing: Text("7 TL"),
        ),
        ListTile(
          title: Text(
            'Meyve Suyu',
          ),
          subtitle: Text("1 Adet x 2.00 TL"),
          trailing: Text("2 TL"),
        ),
        ListTile(
          title: Text(
            'Islak Kek',
          ),
          subtitle: Text("2 Adet x 5.50 TL"),
          trailing: Text("11 TL"),
        ),
        SizedBox(
          height: 20.0,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              children: [
                buildTextHelpers(
                  text: "Toplam Tutar",
                  size: 18.0,
                  weight: FontWeight.bold,
                  color: primaryColor,
                ),
                buildTextHelpers(
                  text: "20 TL",
                  size: 18.0,
                  weight: FontWeight.bold,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: primaryColor,
            ),
            child: Center(
                child: buildTextHelpers(
                    text: "Alışverişi Tamamla",
                    size: 20.0,
                    color: Colors.white,
                    weight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
