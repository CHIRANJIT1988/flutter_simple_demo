import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vm_flutter_demo/utils/page_type.dart';

import '../../view_model/food_item_view_model.dart';
import '../listview/food_item_grid_view.dart';


class ThirdPage extends ConsumerWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(foodItemViewModelProvider);

    return Scaffold(
        body: FutureBuilder(
          future: viewModel.fetchFoodItems(),
          builder: (context, snapshot) {
            // Check if data is still loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Show a progress indicator while loading
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // Check if an error occurred while loading data
            else if (snapshot.hasError) {
              // Display an error message
              return const Center(
                child: Text('Error loading data'),
              );
            }
            // If data has been loaded successfully
            return FoodItemGridView(foodItemList: viewModel.foodItemList, pageType: PageType.pizzaAndBurger.name);
          },
        )
    );
  }
}