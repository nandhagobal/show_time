import 'package:book_show/common_widgets/bottom_navigation.dart';
import 'package:book_show/core/config/di.dart';
import 'package:book_show/routes/app_router.dart';
import 'package:book_show/utils/themes/app_theme.dart';
import 'package:flutter/material.dart';

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
  const MainScreen(this.screen,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: const CustomizedNavBar(),
    );
  }
}

