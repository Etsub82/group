// import 'dart:ui';

// import 'package:deliveryapp/models/food.dart';
// import 'package:flutter/material.dart';

// class MyTabBar extends StatelessWidget {
//   final TabController tabController;

//   const MyTabBar({
//     super.key,
//   required this.tabController });
 
//  List<Tab> _buildCategoryTabs(){
//       return FoodCategory.values.map((catagory){
//         return Tab(
//           text: catagory.toString().split('.').last
          
          
//         );
//       }).toList();
//  }


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TabBar(
//         controller: tabController,
//         tabs: _buildCategoryTabs(),
        
//         ),
//     );
//   }
// }