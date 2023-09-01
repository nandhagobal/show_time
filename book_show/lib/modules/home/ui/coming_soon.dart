import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  final String name;

  const ComingSoon(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("$name \n coming soon"),
    ));
  }
}
