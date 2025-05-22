import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/providers/api_provider.dart';
import 'food_item_view_model.dart';

final foodItemViewModelProvider =
    ChangeNotifierProvider<FoodItemViewModel>((ref) {
  final provider = ref.watch(foodItemRepositoryProvider);
  return FoodItemViewModel(provider);
});
