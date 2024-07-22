import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vm_flutter_demo/views/utils/image_loader_widget.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';


class FoodItemCardView extends StatelessWidget {
  List<FoodItem> foodItemList = [];
  String pageType;

  FoodItemCardView({required this.foodItemList, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodItemList.length,
      itemBuilder: (context, index) {
        FoodItem foodItem = foodItemList[index];
        return ListCardView(foodItem: foodItem, pageType: pageType);
      },
    );
  }
}

class ListCardView extends StatelessWidget {
  FoodItem foodItem;
  String pageType;

  ListCardView({required this.foodItem, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0, // Controls the shadow depth
      margin: const EdgeInsets.all(8), // Adjust margin as needed
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: loadThumbnail(pageType, foodItem.thumbnail(pageType))
        ),
        title: Text(
            foodItem.name(pageType),
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            )
        ),
        subtitle: Text(foodItem.title),
        trailing: Text(
            foodItem.formattedAmount,
            style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
            )
        ),
        onTap: () {
          print('Item clicked: ${foodItem.id}');
          context.push(
              routePath[AppRoutes.details]!,
              extra: {
                'foodItem': foodItem,
                'pageType' : pageType
              });
        },
      ),
    );
  }
}