import 'package:book_show/core/config/di.dart';
import 'package:book_show/modules/home/ui/bottom_nav_bar_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GoRouterObserver extends NavigatorObserver {
  final BottomNavBarBloc bottomNavBarBloc = getIt.get<BottomNavBarBloc>();
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    bottomNavBarBloc.notifyPop(previousRoute?.settings.name);
  }
}
