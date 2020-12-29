import 'package:flutter/material.dart';
import 'package:flutter_market/Helpers/color_helpers.dart';
import 'package:flutter_market/widget/Product.dart';
import 'package:flutter_market/widget/my_basket.dart';

import 'Helpers/text_helpers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _icerikler;
  int aktifIcerikNo = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _icerikler = [Products(), MyBasket()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: buildTextHelpers(
          text: "Uçarak Gelsin",
          size: 20.0,
          color: Colors.grey,
          weight: FontWeight.bold,
        ),
      ),
      body: _icerikler[aktifIcerikNo],
      bottomNavigationBar: buildBottomNavigationBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bayram Eren"),
              accountEmail: Text("bayram@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804_960_720.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              decoration: BoxDecoration(color: primaryColor),
            ),
            ListTile(
              title: Text("Siparişlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("İndirimlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: aktifIcerikNo,
      selectedItemColor: Colors.red[400],
      unselectedItemColor: Colors.grey[600],
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Ürünler",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Sepetim",
        ),
      ],
      onTap: (int tap) {
        setState(() {
          aktifIcerikNo = tap;
        });
      },
    );
  }
}
