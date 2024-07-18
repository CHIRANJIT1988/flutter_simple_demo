import 'package:freezed_annotation/freezed_annotation.dart';

part 'budgets_model.freezed.dart';
part 'budgets_model.g.dart';

@freezed
class BudgetAmount with _$BudgetAmount {
  factory BudgetAmount({
    required double? value,
    required String? currency,
  }) = _BudgetAmount;

  factory BudgetAmount.fromJson(Map<String, dynamic> json) =>
      _$BudgetAmountFromJson(json);
}

@freezed
class BudgetCategory with _$BudgetCategory {
  factory BudgetCategory({
    required String? path,
    required int? id,
    required String? value,
    required bool? archived,
    required String? scheme,
  }) = _BudgetCategory;

  factory BudgetCategory.fromJson(Map<String, dynamic> json) =>
      _$BudgetCategoryFromJson(json);
}

@freezed
class BudgetItem with _$BudgetItem {
  factory BudgetItem({
    required BudgetCategory? category,
    @JsonKey(name: "target_amount") required BudgetAmount? targetAmount,
  }) = _BudgetItem;

  factory BudgetItem.fromJson(Map<String, dynamic> json) =>
      _$BudgetItemFromJson(json);
}

@freezed
class BudgetsResponse with _$BudgetsResponse {
  factory BudgetsResponse({
    @JsonKey(name: "category_budgets")
    required List<BudgetItem> categoryBudgets,
  }) = _BudgetsResponse;

  factory BudgetsResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetsResponseFromJson(json);
}

extension BudgetItemExt on BudgetItem {
  String get targetAmountFormatted {
    return /*targetAmount?.value?.accessibilityFormatCurrency() ??*/ "£0.00";
  }
}

extension ButtonItemAccessibility on BudgetItem {
  String get spentRowAccessibility {
    return "Spent this month, £0.00";
  }

  String get budgetedRowAccessibility {
    return "Amount budgeted, $targetAmountFormatted";
  }

  String get underspentRowAccessibility {
    return "Underspent, £0.00";
  }

  String get noBudgetSetRowAccessibility {
    return "No budget set";
  }
}