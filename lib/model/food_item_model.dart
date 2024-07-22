import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vm_flutter_demo/utils/formatter.dart';
import 'package:vm_flutter_demo/utils/page_type.dart';

part 'food_item_model.g.dart';

@JsonSerializable()
class FoodItem {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  final double amount;

  FoodItem({required this.userId, required this.id, required this.title, required this.completed, this.amount = 7.5});

  factory FoodItem.fromJson(Map<String, dynamic> json) => _$FoodItemFromJson(json);
  Map<String, dynamic> toJson() => _$FoodItemToJson(this);
}

extension FoodItemExt on FoodItem {
  String get formattedAmount {
    return completed ? amount.formatAmount() : "£4.00";
  }
}

extension FoodItemThumbnail on FoodItem {
  String thumbnail(String pageType) {
    if (pageType == PageType.iceCream.name) {
      return completed
          ? 'https://enjoyinfourseason.com/wp-content/uploads/2022/05/Fourseason-STRAWBERRY-ICE-CREAM.jpg'
          : 'https://5.imimg.com/data5/OF/VM/MY-29875862/chocolate-cone-ice-cream-1000x1000.jpg';
    } if (pageType == PageType.coffee.name) {
      return completed ? 'assets/mcdonalds.png' : 'assets/starbucks.png';
    } if (pageType == PageType.pizzaAndBurger.name) {
      return completed
          ? 'https://img.freepik.com/free-psd/fresh-beef-burger-isolated-transparent-background_191095-9023.jpg?w=740&t=st=1721068386~exp=1721068986~hmac=6c3c5d93a8aabbab9b9dd334ea5242a2477eb1b3ec4fa0cdaa1bf14794cc74a4'
          : 'https://img.freepik.com/free-psd/delicious-cheese-pizza-isolated-transparent-background_84443-1205.jpg?w=740&t=st=1721068241~exp=1721068841~hmac=52b021616bffa626a12d522ee13686a701542d91ebf8ad4143f33fee6ed888e1';
    }

    return "";
  }
}

extension FoodItemName on FoodItem {
  String name(String pageType) {
    if (pageType == PageType.iceCream.name) {
      return completed ? 'Strawberry Ice Cream' : "Vanilla Ice Cream";
    } if (pageType == PageType.coffee.name) {
      return completed ? "McDonald's" : 'Starbucks';
    } if (pageType == PageType.pizzaAndBurger.name) {
      return completed ? 'Burger' : 'Pizza';
    }

    return "";
  }
}