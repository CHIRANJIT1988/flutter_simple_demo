import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';


class FoodItemListView extends StatelessWidget {
  List<FoodItem> foodItemList = [];
  FoodItemListView({required this.foodItemList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: foodItemList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (context, index) {
        FoodItem foodItem = foodItemList[index];
        return ListTile(
          leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(foodItem.completed ? 'assets/mcdonalds.png' : 'assets/starbucks.png')
          ),
          title: Text(foodItem.title),
          onTap: () {
            print('Item clicked: ${foodItem.id}');
            context.push(routePath[AppRoutes.details]!, extra: foodItem);
          },
        );
      },
    );
  }
}