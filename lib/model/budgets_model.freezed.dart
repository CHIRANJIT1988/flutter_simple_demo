// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budgets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BudgetAmount _$BudgetAmountFromJson(Map<String, dynamic> json) {
  return _BudgetAmount.fromJson(json);
}

/// @nodoc
mixin _$BudgetAmount {
  double? get value => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetAmountCopyWith<BudgetAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetAmountCopyWith<$Res> {
  factory $BudgetAmountCopyWith(
          BudgetAmount value, $Res Function(BudgetAmount) then) =
      _$BudgetAmountCopyWithImpl<$Res, BudgetAmount>;
  @useResult
  $Res call({double? value, String? currency});
}

/// @nodoc
class _$BudgetAmountCopyWithImpl<$Res, $Val extends BudgetAmount>
    implements $BudgetAmountCopyWith<$Res> {
  _$BudgetAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetAmountImplCopyWith<$Res>
    implements $BudgetAmountCopyWith<$Res> {
  factory _$$BudgetAmountImplCopyWith(
          _$BudgetAmountImpl value, $Res Function(_$BudgetAmountImpl) then) =
      __$$BudgetAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? value, String? currency});
}

/// @nodoc
class __$$BudgetAmountImplCopyWithImpl<$Res>
    extends _$BudgetAmountCopyWithImpl<$Res, _$BudgetAmountImpl>
    implements _$$BudgetAmountImplCopyWith<$Res> {
  __$$BudgetAmountImplCopyWithImpl(
      _$BudgetAmountImpl _value, $Res Function(_$BudgetAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$BudgetAmountImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetAmountImpl implements _BudgetAmount {
  _$BudgetAmountImpl({required this.value, required this.currency});

  factory _$BudgetAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetAmountImplFromJson(json);

  @override
  final double? value;
  @override
  final String? currency;

  @override
  String toString() {
    return 'BudgetAmount(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetAmountImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetAmountImplCopyWith<_$BudgetAmountImpl> get copyWith =>
      __$$BudgetAmountImplCopyWithImpl<_$BudgetAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetAmountImplToJson(
      this,
    );
  }
}

abstract class _BudgetAmount implements BudgetAmount {
  factory _BudgetAmount(
      {required final double? value,
      required final String? currency}) = _$BudgetAmountImpl;

  factory _BudgetAmount.fromJson(Map<String, dynamic> json) =
      _$BudgetAmountImpl.fromJson;

  @override
  double? get value;
  @override
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$BudgetAmountImplCopyWith<_$BudgetAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BudgetCategory _$BudgetCategoryFromJson(Map<String, dynamic> json) {
  return _BudgetCategory.fromJson(json);
}

/// @nodoc
mixin _$BudgetCategory {
  String? get path => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  bool? get archived => throw _privateConstructorUsedError;
  String? get scheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetCategoryCopyWith<BudgetCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCategoryCopyWith<$Res> {
  factory $BudgetCategoryCopyWith(
          BudgetCategory value, $Res Function(BudgetCategory) then) =
      _$BudgetCategoryCopyWithImpl<$Res, BudgetCategory>;
  @useResult
  $Res call(
      {String? path, int? id, String? value, bool? archived, String? scheme});
}

/// @nodoc
class _$BudgetCategoryCopyWithImpl<$Res, $Val extends BudgetCategory>
    implements $BudgetCategoryCopyWith<$Res> {
  _$BudgetCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? id = freezed,
    Object? value = freezed,
    Object? archived = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetCategoryImplCopyWith<$Res>
    implements $BudgetCategoryCopyWith<$Res> {
  factory _$$BudgetCategoryImplCopyWith(_$BudgetCategoryImpl value,
          $Res Function(_$BudgetCategoryImpl) then) =
      __$$BudgetCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? path, int? id, String? value, bool? archived, String? scheme});
}

/// @nodoc
class __$$BudgetCategoryImplCopyWithImpl<$Res>
    extends _$BudgetCategoryCopyWithImpl<$Res, _$BudgetCategoryImpl>
    implements _$$BudgetCategoryImplCopyWith<$Res> {
  __$$BudgetCategoryImplCopyWithImpl(
      _$BudgetCategoryImpl _value, $Res Function(_$BudgetCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? id = freezed,
    Object? value = freezed,
    Object? archived = freezed,
    Object? scheme = freezed,
  }) {
    return _then(_$BudgetCategoryImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      scheme: freezed == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetCategoryImpl implements _BudgetCategory {
  _$BudgetCategoryImpl(
      {required this.path,
      required this.id,
      required this.value,
      required this.archived,
      required this.scheme});

  factory _$BudgetCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetCategoryImplFromJson(json);

  @override
  final String? path;
  @override
  final int? id;
  @override
  final String? value;
  @override
  final bool? archived;
  @override
  final String? scheme;

  @override
  String toString() {
    return 'BudgetCategory(path: $path, id: $id, value: $value, archived: $archived, scheme: $scheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetCategoryImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, path, id, value, archived, scheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetCategoryImplCopyWith<_$BudgetCategoryImpl> get copyWith =>
      __$$BudgetCategoryImplCopyWithImpl<_$BudgetCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetCategoryImplToJson(
      this,
    );
  }
}

abstract class _BudgetCategory implements BudgetCategory {
  factory _BudgetCategory(
      {required final String? path,
      required final int? id,
      required final String? value,
      required final bool? archived,
      required final String? scheme}) = _$BudgetCategoryImpl;

  factory _BudgetCategory.fromJson(Map<String, dynamic> json) =
      _$BudgetCategoryImpl.fromJson;

  @override
  String? get path;
  @override
  int? get id;
  @override
  String? get value;
  @override
  bool? get archived;
  @override
  String? get scheme;
  @override
  @JsonKey(ignore: true)
  _$$BudgetCategoryImplCopyWith<_$BudgetCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BudgetItem _$BudgetItemFromJson(Map<String, dynamic> json) {
  return _BudgetItem.fromJson(json);
}

/// @nodoc
mixin _$BudgetItem {
  BudgetCategory? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "target_amount")
  BudgetAmount? get targetAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetItemCopyWith<BudgetItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetItemCopyWith<$Res> {
  factory $BudgetItemCopyWith(
          BudgetItem value, $Res Function(BudgetItem) then) =
      _$BudgetItemCopyWithImpl<$Res, BudgetItem>;
  @useResult
  $Res call(
      {BudgetCategory? category,
      @JsonKey(name: "target_amount") BudgetAmount? targetAmount});

  $BudgetCategoryCopyWith<$Res>? get category;
  $BudgetAmountCopyWith<$Res>? get targetAmount;
}

/// @nodoc
class _$BudgetItemCopyWithImpl<$Res, $Val extends BudgetItem>
    implements $BudgetItemCopyWith<$Res> {
  _$BudgetItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? targetAmount = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BudgetCategory?,
      targetAmount: freezed == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as BudgetAmount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BudgetCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $BudgetCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BudgetAmountCopyWith<$Res>? get targetAmount {
    if (_value.targetAmount == null) {
      return null;
    }

    return $BudgetAmountCopyWith<$Res>(_value.targetAmount!, (value) {
      return _then(_value.copyWith(targetAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BudgetItemImplCopyWith<$Res>
    implements $BudgetItemCopyWith<$Res> {
  factory _$$BudgetItemImplCopyWith(
          _$BudgetItemImpl value, $Res Function(_$BudgetItemImpl) then) =
      __$$BudgetItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BudgetCategory? category,
      @JsonKey(name: "target_amount") BudgetAmount? targetAmount});

  @override
  $BudgetCategoryCopyWith<$Res>? get category;
  @override
  $BudgetAmountCopyWith<$Res>? get targetAmount;
}

/// @nodoc
class __$$BudgetItemImplCopyWithImpl<$Res>
    extends _$BudgetItemCopyWithImpl<$Res, _$BudgetItemImpl>
    implements _$$BudgetItemImplCopyWith<$Res> {
  __$$BudgetItemImplCopyWithImpl(
      _$BudgetItemImpl _value, $Res Function(_$BudgetItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? targetAmount = freezed,
  }) {
    return _then(_$BudgetItemImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as BudgetCategory?,
      targetAmount: freezed == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as BudgetAmount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetItemImpl implements _BudgetItem {
  _$BudgetItemImpl(
      {required this.category,
      @JsonKey(name: "target_amount") required this.targetAmount});

  factory _$BudgetItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetItemImplFromJson(json);

  @override
  final BudgetCategory? category;
  @override
  @JsonKey(name: "target_amount")
  final BudgetAmount? targetAmount;

  @override
  String toString() {
    return 'BudgetItem(category: $category, targetAmount: $targetAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetItemImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, targetAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetItemImplCopyWith<_$BudgetItemImpl> get copyWith =>
      __$$BudgetItemImplCopyWithImpl<_$BudgetItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetItemImplToJson(
      this,
    );
  }
}

abstract class _BudgetItem implements BudgetItem {
  factory _BudgetItem(
      {required final BudgetCategory? category,
      @JsonKey(name: "target_amount")
      required final BudgetAmount? targetAmount}) = _$BudgetItemImpl;

  factory _BudgetItem.fromJson(Map<String, dynamic> json) =
      _$BudgetItemImpl.fromJson;

  @override
  BudgetCategory? get category;
  @override
  @JsonKey(name: "target_amount")
  BudgetAmount? get targetAmount;
  @override
  @JsonKey(ignore: true)
  _$$BudgetItemImplCopyWith<_$BudgetItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BudgetsResponse _$BudgetsResponseFromJson(Map<String, dynamic> json) {
  return _BudgetsResponse.fromJson(json);
}

/// @nodoc
mixin _$BudgetsResponse {
  @JsonKey(name: "category_budgets")
  List<BudgetItem> get categoryBudgets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetsResponseCopyWith<BudgetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetsResponseCopyWith<$Res> {
  factory $BudgetsResponseCopyWith(
          BudgetsResponse value, $Res Function(BudgetsResponse) then) =
      _$BudgetsResponseCopyWithImpl<$Res, BudgetsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_budgets") List<BudgetItem> categoryBudgets});
}

/// @nodoc
class _$BudgetsResponseCopyWithImpl<$Res, $Val extends BudgetsResponse>
    implements $BudgetsResponseCopyWith<$Res> {
  _$BudgetsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryBudgets = null,
  }) {
    return _then(_value.copyWith(
      categoryBudgets: null == categoryBudgets
          ? _value.categoryBudgets
          : categoryBudgets // ignore: cast_nullable_to_non_nullable
              as List<BudgetItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetsResponseImplCopyWith<$Res>
    implements $BudgetsResponseCopyWith<$Res> {
  factory _$$BudgetsResponseImplCopyWith(_$BudgetsResponseImpl value,
          $Res Function(_$BudgetsResponseImpl) then) =
      __$$BudgetsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_budgets") List<BudgetItem> categoryBudgets});
}

/// @nodoc
class __$$BudgetsResponseImplCopyWithImpl<$Res>
    extends _$BudgetsResponseCopyWithImpl<$Res, _$BudgetsResponseImpl>
    implements _$$BudgetsResponseImplCopyWith<$Res> {
  __$$BudgetsResponseImplCopyWithImpl(
      _$BudgetsResponseImpl _value, $Res Function(_$BudgetsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryBudgets = null,
  }) {
    return _then(_$BudgetsResponseImpl(
      categoryBudgets: null == categoryBudgets
          ? _value._categoryBudgets
          : categoryBudgets // ignore: cast_nullable_to_non_nullable
              as List<BudgetItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetsResponseImpl implements _BudgetsResponse {
  _$BudgetsResponseImpl(
      {@JsonKey(name: "category_budgets")
      required final List<BudgetItem> categoryBudgets})
      : _categoryBudgets = categoryBudgets;

  factory _$BudgetsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetsResponseImplFromJson(json);

  final List<BudgetItem> _categoryBudgets;
  @override
  @JsonKey(name: "category_budgets")
  List<BudgetItem> get categoryBudgets {
    if (_categoryBudgets is EqualUnmodifiableListView) return _categoryBudgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryBudgets);
  }

  @override
  String toString() {
    return 'BudgetsResponse(categoryBudgets: $categoryBudgets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryBudgets, _categoryBudgets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryBudgets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetsResponseImplCopyWith<_$BudgetsResponseImpl> get copyWith =>
      __$$BudgetsResponseImplCopyWithImpl<_$BudgetsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetsResponseImplToJson(
      this,
    );
  }
}

abstract class _BudgetsResponse implements BudgetsResponse {
  factory _BudgetsResponse(
      {@JsonKey(name: "category_budgets")
      required final List<BudgetItem> categoryBudgets}) = _$BudgetsResponseImpl;

  factory _BudgetsResponse.fromJson(Map<String, dynamic> json) =
      _$BudgetsResponseImpl.fromJson;

  @override
  @JsonKey(name: "category_budgets")
  List<BudgetItem> get categoryBudgets;
  @override
  @JsonKey(ignore: true)
  _$$BudgetsResponseImplCopyWith<_$BudgetsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
