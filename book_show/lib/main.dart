import 'package:book_show/core/config/di.dart';
import 'package:book_show/modules/home/ui/home_screen.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const HomeScreen(),
    );
  }
}
