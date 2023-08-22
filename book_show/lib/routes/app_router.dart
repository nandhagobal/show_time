import 'package:book_show/modules/home/ui/home_screen.dart';
import 'package:book_show/modules/home/ui/movie_details_screen.dart';
import 'package:book_show/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../modules/home/domain/models/movie.dart';

class AppRouter {
  final goRouter = GoRouter(routes: [
    GoRoute(
        path: "/",
        name: AppRouteConstants.homeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
    GoRoute(
        path: "/details",
        name: AppRouteConstants.movieDetailsScreen,
        pageBuilder: (context, GoRouterState state) {
          Movie movie = state.extra as Movie;
          return MaterialPage(child: MovieDetailsScreen(movie));
        })
  ]);
}
