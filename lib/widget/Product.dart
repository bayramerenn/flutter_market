import 'package:flutter/material.dart';
import 'package:flutter_market/Helpers/color_helpers.dart';
import 'package:flutter_market/widget/Category.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorColor: primaryColor,
          labelColor: primaryColor,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
          tabs: [
            Tab(
              child: Text("Temel Gıda"),
            ),
            Tab(
              child: Text("Şekerleme"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Temizlik"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Category(
                category: "temel gıda",
              ),
              Category(
                category: "şekerleme",
              ),
              Category(
                category: "içecekler",
              ),
              Category(
                category: "temizlik",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
