import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  // final List<Tab> tabs;
  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    List<Tab> _buildCategoryTabs() {
      return FoodCategory.values.map((category) {
        return Tab(
          text: category.toString().split('.').last,
        );
      }).toList();
    }

    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs()
      )
    );
  }
}
