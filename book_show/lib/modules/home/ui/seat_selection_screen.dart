import 'package:book_show/common_widgets/app_bar.dart';
import 'package:book_show/modules/home/ui/seat_area.dart';
import 'package:book_show/modules/home/ui/show_time_widget.dart';
import 'package:flutter/material.dart';

class SeatSelectionScreen extends StatelessWidget {
  const SeatSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Seat Selection", context),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                    child: ListView(
                  children: [
                    SeatArea(10, 10),
                    const ShowTimes([
                      "10:00PM",
                      "12:00PM",
                      "10:00PM",
                      "12:00PM",
                      "10:00PM",
                    ])
                  ],
                )),
              ),
              Container(
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(
                    child: Text(
                  "Checkout",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.white),
                )),
              )
            ],
          ),
        ));
  }
}
