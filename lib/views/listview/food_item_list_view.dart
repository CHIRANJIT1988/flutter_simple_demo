import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';
import '../widgets/image_loader_widget.dart';


class FoodItemListView extends StatelessWidget {
  List<FoodItem> foodItemList = [];
  String pageType;

  FoodItemListView({required this.foodItemList, required this.pageType, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: foodItemList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (context, index) {
        FoodItem foodItem = foodItemList[index];
        return ListTile(
          leading: CircularImage(url: foodItem.thumbnail(pageType), isNetworkImage: isNetworkImage(pageType)),
          title: Text(foodItem.title),
          trailing: const Icon(Icons.more_vert), // Optionally add a trailing icon
          onTap: () {
            print('Item clicked: ${foodItem.id}');
            context.push(
                routePath[AppRoutes.details]!,
                extra: {
                  'foodItem': foodItem,
                  'pageType' : pageType
                });

          },
        );
      },
    );
  }
}