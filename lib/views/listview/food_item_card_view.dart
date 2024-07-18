import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';


class FoodItemCardView extends StatelessWidget {
  List<FoodItem> foodItemList = [];

  FoodItemCardView({required this.foodItemList, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodItemList.length,
      itemBuilder: (context, index) {
        FoodItem foodItem = foodItemList[index];
        return ListCardView(foodItem: foodItem);
      },
    );
  }
}

class ListCardView extends StatelessWidget {
  FoodItem foodItem;
  ListCardView({required this.foodItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0, // Controls the shadow depth
      margin: const EdgeInsets.all(8), // Adjust margin as needed
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(foodItem.completed ? 'https://enjoyinfourseason.com/wp-content/uploads/2022/05/Fourseason-STRAWBERRY-ICE-CREAM.jpg' : 'https://5.imimg.com/data5/OF/VM/MY-29875862/chocolate-cone-ice-cream-1000x1000.jpg')
        ),
        title: Text(
            foodItem.completed ? 'Strawberry Ice Cream' : "Vanilla Ice Cream",
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            )
        ),
        subtitle: Text(foodItem.title),
        trailing: const Icon(Icons.more_vert), // Optionally add a trailing icon
        onTap: () {
          print('Item clicked: ${foodItem.id}');
          context.push(routePath[AppRoutes.details]!, extra: foodItem);
        },
      ),
    );
  }
}