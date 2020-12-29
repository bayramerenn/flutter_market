import 'package:flutter/material.dart';
import 'package:flutter_market/Helpers/color_helpers.dart';
import 'package:flutter_market/Helpers/text_helpers.dart';

class ProductDetail extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  const ProductDetail({Key key, this.imageUrl, this.productName, this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(tag: imageUrl, child: Image.network(imageUrl)),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              buildTextHelpers(
                  text: productName, size: 20.0, weight: FontWeight.bold),
              SizedBox(
                height: 10.0,
              ),
              buildTextHelpers(
                  text: price + ' TL',
                  size: 20.0,
                  weight: FontWeight.bold,
                  color: primaryColor),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: buildTextHelpers(
                  text:
                      "Bu bölümde ürün açıklaması bulunacak. Ürünün ne kadar kaliteli olduğu hakkında bilgiler verecek",
                  size: 16.0,
                  weight: FontWeight.bold,
                  color: Colors.grey,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.0)),
                child: Center(
                  child: buildTextHelpers(
                      text: "Sepete Ekle",
                      size: 20.0,
                      weight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
