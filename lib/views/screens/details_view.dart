import 'package:flutter/material.dart';

import '../../model/food_item_model.dart';


class DetailsView extends StatelessWidget {
  FoodItem food;
  DetailsView(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(food.title),
      ),
    );
  }
}