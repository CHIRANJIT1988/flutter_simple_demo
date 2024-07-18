// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) => FoodItem(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
