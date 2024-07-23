import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';
import '../widgets/image_loader_widget.dart';


class FoodItemGridView extends StatelessWidget {
  List<FoodItem> foodItemList = [];
  String pageType;

  FoodItemGridView({required this.foodItemList, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        padding: const EdgeInsets.all(10.0), // Padding around the GridView
        itemCount: foodItemList.length, // Total number of items
        itemBuilder: (BuildContext context, int index) {
          FoodItem foodItem = foodItemList[index];
          return GestureDetector(
              onTap: () {
                print('Item $index tapped ${foodItem.thumbnail(pageType)}');
                context.push(
                    routePath[AppRoutes.details]!,
                    extra: {
                      'foodItem': foodItem,
                      'pageType' : pageType
                    });
              },
              child: GridCardView(foodItem: foodItemList[index], pageType: pageType)
          );
        });
  }
}

class GridCardView extends StatelessWidget {
  FoodItem foodItem;
  String pageType;

  GridCardView({required this.foodItem, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //loadImage(pageType, foodItem.thumbnail(pageType)),
          CircularImage(url: foodItem.thumbnail(pageType), isNetworkImage: isNetworkImage(pageType)),
          const SizedBox(height: 10.0),
          Text(
            foodItem.name(pageType),
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}