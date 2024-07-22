import 'package:go_router/go_router.dart';
import 'package:vm_flutter_demo/views/screens/first_navigation_page.dart';
import 'package:vm_flutter_demo/views/screens/second_navigation_page.dart';
import 'package:vm_flutter_demo/views/screens/third_navigation_page.dart';

import '../main.dart';
import '../model/food_item_model.dart';
import '../views/screens/details_view.dart';

enum AppRoutes {
  home,
  navigationFirst,
  navigationSecond,
  navigationThird,
  details
}

Map<AppRoutes, String> routePath = {
  AppRoutes.home: '/home',
  AppRoutes.navigationFirst: '/first',
  AppRoutes.navigationSecond: '/second',
  AppRoutes.navigationThird: '/third',
  AppRoutes.details: '/details'
};

final GoRouter router = GoRouter(
    initialLocation: routePath[AppRoutes.navigationFirst],
    routes: [
      ShellRoute(builder: (context, state, child) {
        return MyHomePage(child: child);
      }, routes: [
        GoRoute(
            path: routePath[AppRoutes.details]!,
            builder: (context, state) {
              final args = state.extra as Map<String, dynamic>;
              final FoodItem food = args['foodItem'] as FoodItem;
              final String pageType = args['pageType'] as String;
              return DetailsView(food, pageType);
            }
        ),
        GoRoute(
          path: routePath[AppRoutes.navigationFirst]!,
          pageBuilder: (context, state) => const NoTransitionPage(child: FirstPage()),
        ),
        GoRoute(
          path: routePath[AppRoutes.navigationSecond]!,
          pageBuilder: (context, state) => const NoTransitionPage(child: SecondPage()),
        ),
        GoRoute(
          path: routePath[AppRoutes.navigationThird]!,
          pageBuilder: (context, state) => const NoTransitionPage(child: ThirdPage()),
        ),
      ])
    ]);
