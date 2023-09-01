import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar appBar(String title, BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
    ),
    title: Text(title, style: Theme.of(context).textTheme.labelMedium),
    titleSpacing: 0.0,
  );
}
