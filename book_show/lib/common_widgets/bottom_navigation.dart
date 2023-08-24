import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomizedNavBar extends StatefulWidget {
  const CustomizedNavBar({super.key});

  @override
  State<CustomizedNavBar> createState() => _CustomizedNavBarState();
}

class _CustomizedNavBarState extends State<CustomizedNavBar> {
  int selectedTabIndex = 0;

  @override
  void initState() {
    print("state is newly created");
    super.initState();
  }

  void changeSelectedTabIndex(int index){
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("bottom nav bar rendered $selectedTabIndex");
    return BottomNavigationBar(
            onTap: (int selectedIndex) {
              changeSelectedTabIndex(selectedIndex);
              switch(selectedIndex) {
                case 0 : context.push("/");
                case 1 : context.push("/discover");
                case 2 : context.push("/profile");
              }
            },
            currentIndex: selectedTabIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "discover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "profile"),
            ],
          );
  }
}
