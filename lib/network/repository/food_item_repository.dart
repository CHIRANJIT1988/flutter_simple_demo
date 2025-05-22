import '../../model/food_item_model.dart';
import '../services/api_service.dart';

abstract class FoodItemRepository {
  Future<List<FoodItem>> fetchFoodItems();
}

class FoodItemRepositoryImpl extends FoodItemRepository {
  final ApiService _apiService;
  FoodItemRepositoryImpl(this._apiService);

  @override
  Future<List<FoodItem>> fetchFoodItems() => _apiService.get("todos");
}
