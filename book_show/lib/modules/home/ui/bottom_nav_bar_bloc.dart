import 'package:book_show/core/model/bottom_nav_bar_item.dart';
import 'package:book_show/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class BottomNavBarBloc {
  List<BottomNavBarItem> get items => [
        BottomNavBarItem(const Icon(Icons.home), "/home", "Home",
            AppRouteConstants.homeScreen),
        BottomNavBarItem(const Icon(Icons.search), "/discover", "Discover",
            AppRouteConstants.discoverScreen),
        BottomNavBarItem(const Icon(Icons.person), "/profile", "Profile",
            AppRouteConstants.profileScreen)
      ];

  int _index = 0;

  void changeIndex(int index) {
    _index = index;
  }

  int getIndex() => _index;

  void notifyPop(String? name) {
    var indexedItem = items.indexed;
    var iterator = indexedItem.iterator;
    while (iterator.moveNext()) {
      if (iterator.current.$2.name == name) {
        _index = iterator.current.$1;
      }
    }
  }
}
