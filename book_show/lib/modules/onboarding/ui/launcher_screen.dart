import 'dart:async';

import 'package:flutter/material.dart';

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
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    //GoRouter.of(context).pushReplacement(
     //   Uri(path: "/${TMAppRouteConstants.onBoardingScreen}").toString());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}
