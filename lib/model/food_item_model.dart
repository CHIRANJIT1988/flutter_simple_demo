import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item_model.g.dart';

@JsonSerializable()
class FoodItem {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  FoodItem({required this.userId, required this.id, required this.title, required this.completed,});

  factory FoodItem.fromJson(Map<String, dynamic> json) => _$FoodItemFromJson(json);
  Map<String, dynamic> toJson() => _$FoodItemToJson(this);
}