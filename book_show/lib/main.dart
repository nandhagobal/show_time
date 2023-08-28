import 'package:book_show/core/config/di.dart';
import 'package:book_show/modules/home/ui/bottom_nav_bar_bloc.dart';
import 'package:book_show/routes/app_router.dart';
import 'package:book_show/utils/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      title: 'Show Time',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      routerConfig: router.goRouter,
    );
  }
}

class MainScreen extends StatelessWidget {
  final Widget screen;
  final BottomNavBarBloc bottomNavBarBloc = getIt.get<BottomNavBarBloc>();
  MainScreen(this.screen,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedIndex) {
          bottomNavBarBloc.changeIndex(selectedIndex);
          context.push(bottomNavBarBloc.items[selectedIndex].path);
        },
        currentIndex: bottomNavBarBloc.getIndex(),
        items: bottomNavBarBloc.items.map((e) => BottomNavigationBarItem(icon: e.icon,label: e.label)).toList()
      )
    );
  }
}

