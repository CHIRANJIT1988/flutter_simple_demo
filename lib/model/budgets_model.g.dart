// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budgets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetAmountImpl _$$BudgetAmountImplFromJson(Map<String, dynamic> json) =>
    _$BudgetAmountImpl(
      value: (json['value'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$BudgetAmountImplToJson(_$BudgetAmountImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };

_$BudgetCategoryImpl _$$BudgetCategoryImplFromJson(Map<String, dynamic> json) =>
    _$BudgetCategoryImpl(
      path: json['path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      value: json['value'] as String?,
      archived: json['archived'] as bool?,
      scheme: json['scheme'] as String?,
    );

Map<String, dynamic> _$$BudgetCategoryImplToJson(
        _$BudgetCategoryImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'value': instance.value,
      'archived': instance.archived,
      'scheme': instance.scheme,
    };

_$BudgetItemImpl _$$BudgetItemImplFromJson(Map<String, dynamic> json) =>
    _$BudgetItemImpl(
      category: json['category'] == null
          ? null
          : BudgetCategory.fromJson(json['category'] as Map<String, dynamic>),
      targetAmount: json['target_amount'] == null
          ? null
          : BudgetAmount.fromJson(
              json['target_amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BudgetItemImplToJson(_$BudgetItemImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'target_amount': instance.targetAmount,
    };

_$BudgetsResponseImpl _$$BudgetsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BudgetsResponseImpl(
      categoryBudgets: (json['category_budgets'] as List<dynamic>)
          .map((e) => BudgetItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BudgetsResponseImplToJson(
        _$BudgetsResponseImpl instance) =>
    <String, dynamic>{
      'category_budgets': instance.categoryBudgets,
    };
