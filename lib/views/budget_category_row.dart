import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/budgets_model.dart';

class BudgetCategoryRow extends StatefulWidget {
  final BudgetItem item;
  const BudgetCategoryRow({
    super.key,
    required this.item,
  });

  @override
  State<BudgetCategoryRow> createState() => _BudgetCategoryRowState();
}

class _BudgetCategoryRowState extends State<BudgetCategoryRow> {
  final double rowHeight = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: colorScheme(context).surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.item.category?.value ?? "",
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Semantics(
            label: widget.item.spentRowAccessibility,
            child: const ExcludeSemantics(
              child: Row(
                //text: "Spent this month",
                //separatorOptions: VMSeparatorOptions.none,
                //value: "£0.00",
                //rowBaseHeight: rowHeight,
              ),
            ),
          ),
          Semantics(
            label: widget.item.budgetedRowAccessibility,
            child: const ExcludeSemantics(
              child: Row(
                //text: "Amount budgeted",
                //separatorOptions: VMSeparatorOptions.none,
                //value: widget.item.targetAmountFormatted,
                //rowBaseHeight: rowHeight,
              ),
            ),
          ),
          Semantics(
            label: widget.item.noBudgetSetRowAccessibility,
            child: const ExcludeSemantics(
              child: Row(
                //text: "No budget set",
                //separatorOptions: VMSeparatorOptions.bottom,
                //rowBaseHeight: rowHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
