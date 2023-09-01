import 'package:book_show/common_widgets/app_bar.dart';
import 'package:book_show/modules/home/ui/seat_area.dart';
import 'package:flutter/material.dart';

class SeatSelectionScreen extends StatelessWidget {
  const SeatSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Seat Selection", context),
        body: Center(
            child: Column(
          children: [SeatArea(7, 6)],
        )));
  }
}
