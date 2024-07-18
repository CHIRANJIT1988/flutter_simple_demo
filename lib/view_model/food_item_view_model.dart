import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vm_flutter_demo/network/food_item_repository.dart';

import '../model/food_item_model.dart';


class FoodItemViewModel extends ChangeNotifier {
  final FoodItemRepository _repository;
  List<FoodItem> foodItemList = [];

  FoodItemViewModel(this._repository);

  Future<List<FoodItem>> fetchFoodItems() async {
    return foodItemList = await _repository.fetchFoodItems();
  }
}

final foodItemViewModelProvider = ChangeNotifierProvider<FoodItemViewModel>((ref) {
  final provider = ref.watch(foodItemRepositoryProvider);
  return FoodItemViewModel(provider);
});