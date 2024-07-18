import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/budgets_model.dart';
import '../../network/budget_repository.dart';
import '../budget_category_row.dart';

class BudgetList extends ConsumerStatefulWidget {
  const BudgetList({super.key});

  @override
  ConsumerState<BudgetList> createState() => _BudgetListState();
}

class _BudgetListState extends ConsumerState<BudgetList> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    var repo = ref.watch(getBudgetsProvider);
    return PopScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Budget List"),
          ),
          body: SafeArea(
            child: repo.when(
                data: (data) {
                  return budgetList(data.categoryBudgets);
                },
                error: (error, stacktrace) {
                  return Center(
                    child: Text(
                      error.toString(),
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  );
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                }),
          ),
        )
    );
  }

  Widget budgetList(List<BudgetItem> categories) {
    return CustomScrollView(
      slivers: categories
          .map((item) => SliverToBoxAdapter(
        child: BudgetCategoryRow(
          key: ValueKey(item.category?.path),
          item: item,
        ),
      ))
          .toList(),
    );
  }
}