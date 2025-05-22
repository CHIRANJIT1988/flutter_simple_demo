import 'package:flutter/material.dart';

import '../model/food_item_model.dart';
import '../network/repository/food_item_repository.dart';

class FoodItemViewModel extends ChangeNotifier {
  final FoodItemRepository _repository;
  List<FoodItem> foodItemList = [];

  FoodItemViewModel(this._repository);

  Future<List<FoodItem>> fetchFoodItems() async {
    return foodItemList = await _repository.fetchFoodItems();
  }
}
