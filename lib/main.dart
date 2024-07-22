import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vm_flutter_demo/router/app_routes.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const ProviderScope(child: MyApp()));
}

//Used for network image loading issue
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'GoRouter Example',
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Widget child;

  const MyHomePage({super.key, required this.child});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<String> pages = [
    routePath[AppRoutes.navigationFirst]!,
    routePath[AppRoutes.navigationSecond]!,
    routePath[AppRoutes.navigationThird]!
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.cyan, // Change the app bar color here
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Food Menu'),
          ),
          body: widget.child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.icecream),
                label: 'Ice Cream',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.coffee),
                label: 'Coffee',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza),
                label: 'Pizza & Burger',
              ),
            ],
          ),
        )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.go(pages[index]);
  }
}