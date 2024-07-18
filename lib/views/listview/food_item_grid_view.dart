import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/food_item_model.dart';
import '../../router/app_routes.dart';


class FoodItemGridView extends StatelessWidget {
  List<FoodItem> foodItemList = [];

  FoodItemGridView({required this.foodItemList, super.key});

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
                print('Item $index tapped');
                context.push(routePath[AppRoutes.details]!, extra: foodItem);
              },
              child: GridCardView(foodItem: foodItemList[index])
          );
        });
  }
}

class GridCardView extends StatelessWidget {
  FoodItem foodItem;
  GridCardView({required this.foodItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(foodItem.completed ? 'https://img.freepik.com/free-psd/fresh-beef-burger-isolated-transparent-background_191095-9023.jpg?w=740&t=st=1721068386~exp=1721068986~hmac=6c3c5d93a8aabbab9b9dd334ea5242a2477eb1b3ec4fa0cdaa1bf14794cc74a4' : 'https://img.freepik.com/free-psd/delicious-cheese-pizza-isolated-transparent-background_84443-1205.jpg?w=740&t=st=1721068241~exp=1721068841~hmac=52b021616bffa626a12d522ee13686a701542d91ebf8ad4143f33fee6ed888e1')
          ),
          const SizedBox(height: 10.0),
          Text(
            foodItem.completed ? 'Burger' : 'Pizza',
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}