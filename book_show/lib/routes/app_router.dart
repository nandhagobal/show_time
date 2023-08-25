
import 'package:book_show/main.dart';
import 'package:book_show/modules/home/ui/coming_soon.dart';
import 'package:book_show/modules/home/ui/home_screen.dart';
import 'package:book_show/modules/home/ui/movie_details_screen.dart';
import 'package:book_show/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../modules/home/domain/models/movie.dart';
final GlobalKey<NavigatorState> _rootNavigatorKey =
GlobalKey<NavigatorState>();

class AppRouter {
  final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
      routes: [
    ShellRoute(
        builder: (context, state, child) {
          return MainScreen(child);
        },
        routes: [
          GoRoute(
              path: "/",
              name: AppRouteConstants.homeScreen,
              builder: (context, state) {
                return const HomeScreen();
              }),
          GoRoute(
              path: "/discover",
              name: AppRouteConstants.discoverScreen,
              builder: (context, state) {
                return const ComingSoon("discover");
              }),
          GoRoute(
              path: "/profile",
              name: AppRouteConstants.profileScreen,
              builder: (context, state) {
                return const ComingSoon("profile");
              }),
        ]),
        GoRoute(
            path: "/details",
            parentNavigatorKey: _rootNavigatorKey,
            name: AppRouteConstants.movieDetailsScreen,
            builder: (context, GoRouterState state) {
              Movie movie = state.extra as Movie;
              return MovieDetailsScreen(movie);
            })
  ]);
}
