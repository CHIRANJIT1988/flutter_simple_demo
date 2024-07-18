import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/budgets_model.dart';

part 'budget_repository.g.dart';

@riverpod
Future<BudgetsResponse> getBudgets(GetBudgetsRef ref) async {
  try {
    Map<String, dynamic> response = jsonDecode(mockData);
    return Future.sync(() => BudgetsResponse.fromJson(response));
  } catch (e) {
    return Future.error(e);
  }
}

String get mockData => """
{
    "tag_budgets": [],
    "category_budgets": [
        {
            "category": {
                "path": "/tech",
                "id": 302,
                "value": "Tech",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/keeping fit",
                "id": 303,
                "value": "Keeping fit",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/pets",
                "id": 304,
                "value": "Pets",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/kids",
                "id": 305,
                "value": "Kids",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 10,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/school",
                "id": 306,
                "value": "School",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/finance",
                "id": 307,
                "value": "Finance",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/other",
                "id": 311,
                "value": "Other",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/home",
                "id": 23277,
                "value": "Home",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },

        {
            "category": {
                "path": "/fuel",
                "id": 23281,
                "value": "Fuel",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/staying away",
                "id": 23286,
                "value": "Staying away",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/entertainment",
                "id": 23290,
                "value": "Entertainment",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/utilities",
                "id": 24429,
                "value": "Utilities",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/wellbeing",
                "id": 24430,
                "value": "Wellbeing",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/mortgage or rent",
                "id": 24433,
                "value": "Mortgage or rent",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/groceries",
                "id": 24459,
                "value": "Groceries",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/getting around",
                "id": 24460,
                "value": "Getting around",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/eating out",
                "id": 24461,
                "value": "Eating out",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 10,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/holidays",
                "id": 24462,
                "value": "Holidays",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/style",
                "id": 24463,
                "value": "Style",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/travel",
                "id": 20158551,
                "value": "Travel",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/vehicle",
                "id": 20158553,
                "value": "Vehicle",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/uncategorised",
                "id": 20158565,
                "value": "Uncategorised",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/employees",
                "id": 20158566,
                "value": "Employees",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/insurance",
                "id": 20158567,
                "value": "Insurance",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/cash withdrawals",
                "id": 20158568,
                "value": "Cash Withdrawals",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/taxes",
                "id": 20158569,
                "value": "Taxes",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/materials",
                "id": 20158788,
                "value": "Materials",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/memberships & subscriptions",
                "id": 20158789,
                "value": "Memberships & Subscriptions",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/services",
                "id": 20158799,
                "value": "Services",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/transfers out",
                "id": 20158800,
                "value": "Transfers Out",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/financial expenditure",
                "id": 20158801,
                "value": "Financial Expenditure",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/income",
                "id": 20158802,
                "value": "Income",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/pending transactions",
                "id": 20158803,
                "value": "Pending Transactions",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        },
        {
            "category": {
                "path": "/premises",
                "id": 20158804,
                "value": "Premises",
                "archived": false,
                "scheme": "NAG Categories"
            },
            "target_amount": {
                "value": 0,
                "currency": "GBP"
            }
        }
    ]
}
""";