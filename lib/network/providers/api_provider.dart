import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/food_item_repository.dart';
import '../services/api_service.dart';

// Provide Dio
final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    headers: {
      'Content-Type': 'application/json',
    },
  ));
});

// Provide ApiService
final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

// Provide FoodItemRepository
final foodItemRepositoryProvider = Provider<FoodItemRepository>((ref) {
  final api = ref.watch(apiServiceProvider);
  return FoodItemRepositoryImpl(api);
});
