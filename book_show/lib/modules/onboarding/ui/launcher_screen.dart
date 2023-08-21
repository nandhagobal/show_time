import 'dart:async';

import 'package:book_show/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    GoRouter.of(context).pushReplacement(
        Uri(path: "/${AppRouteConstants.homeScreen}").toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset("assets/images/movie_launcher_logo.png"))),
    );
  }
}
