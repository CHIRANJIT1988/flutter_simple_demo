
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/food_item_model.dart';
import 'api_service.dart';

abstract class FoodItemRepository {
  Future<List<FoodItem>> fetchFoodItems();
}

class FoodItemRepositoryImpl extends FoodItemRepository {
  final ApiService _apiService;
  FoodItemRepositoryImpl(this._apiService);

  @override
  Future<List<FoodItem>> fetchFoodItems() async {
    try {
      // Get the list of dynamic objects from API
      List<dynamic> response = await _apiService.get("todos");
      // Map each JSON object to a User object
      return response.map((json) => FoodItem.fromJson(json)).toList();
      // notifyListeners();
    } catch (e) {
      throw Exception('Failed to fetch data');
    }
  }
}

final foodItemRepositoryProvider = Provider<FoodItemRepository>((ref) =>
    FoodItemRepositoryImpl(ref.watch(apiServiceProvider)));

