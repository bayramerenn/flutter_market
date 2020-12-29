import 'package:flutter/material.dart';
import 'package:flutter_market/Helpers/color_helpers.dart';
import 'package:flutter_market/Helpers/text_helpers.dart';
import 'package:flutter_market/widget/product_detail.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({Key key, this.category}) : super(key: key);
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> _toShowList;

  @override
  void initState() {
    super.initState();

    switch (widget.category) {
      case 'temel gıda':
        _toShowList = stapleFood;
        break;
      case 'şekerleme':
        _toShowList = luscious;
        break;
      case 'içecekler':
        _toShowList = drinks;
        break;
      case 'temizlik':
        _toShowList = cleaning;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: _toShowList,
    );
  }

  Widget productCard(String productName, String price, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ProductDetail(
                      imageUrl: imageUrl,
                      price: price,
                      productName: productName,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: imageUrl,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            buildTextHelpers(
              text: productName,
              size: 14.0,
              weight: FontWeight.bold,
              color: Colors.grey[600],
            ),
            SizedBox(
              height: 8.0,
            ),
            buildTextHelpers(
              text: price + ' TL',
              size: 14.0,
              weight: FontWeight.bold,
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get cleaning {
    return [
      productCard("Selpak", "11",
          "https://cdn.pixabay.com/photo/2020/03/27/17/03/shopping-4974313__340.jpg"),
      productCard("Sabun", "6",
          "https://cdn.pixabay.com/photo/2017/05/23/16/23/soap-dispenser-2337697_960_720.jpg"),
    ];
  }

  List<Widget> get drinks {
    return [
      productCard("Kahve", "21",
          "https://cdn.pixabay.com/photo/2013/08/11/19/46/coffee-171653_960_720.jpg"),
      productCard("Çay", "5",
          "https://cdn.pixabay.com/photo/2016/10/14/18/21/tee-1740871_960_720.jpg"),
    ];
  }

  List<Widget> get luscious {
    return [
      productCard("Dondurma", "1",
          "https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-cone-1274894_960_720.jpg"),
      productCard("Pankek", "5",
          "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_960_720.jpg"),
      productCard("Bardak Tatlı", "8",
          "https://cdn.pixabay.com/photo/2017/03/31/18/02/strawberry-dessert-2191973_960_720.jpg"),
    ];
  }

  List<Widget> get stapleFood {
    return [
      productCard("Zeytin Yağı", "10",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg"),
      productCard("Süt", "5",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg"),
      productCard("Makarna", "8",
          "https://cdn.pixabay.com/photo/2016/11/23/18/31/close-up-1854245_960_720.jpg"),
      productCard("Meyve Suyu", "20",
          "https://cdn.pixabay.com/photo/2018/02/23/19/23/raspberry-3176371_960_720.jpg"),
      productCard("Yumurta", "20",
          "https://cdn.pixabay.com/photo/2015/09/17/17/19/egg-944495_960_720.jpg"),
      productCard("Köy Ekmeği", "7",
          "https://cdn.pixabay.com/photo/2017/04/01/12/36/bread-2193537_960_720.jpg"),
    ];
  }
}
