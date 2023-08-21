import 'package:book_show/modules/home/ui/home_screen.dart';
import 'package:book_show/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final goRouter = GoRouter(routes: [
    GoRoute(
        path: "/",
        name: AppRouteConstants.homeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
  ]);
}
