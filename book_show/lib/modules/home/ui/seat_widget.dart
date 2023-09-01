import 'package:flutter/material.dart';

class Seat extends StatefulWidget {
  final String id;
  const Seat(this.id, {super.key});

  void add() {}

  @override
  State<Seat> createState() => _SeatState(id);
}

class _SeatState extends State<Seat> {
  String id;
  bool isSelected = false;
  bool isBlocked = false;

  _SeatState(this.id);

  toggleSeatStatus() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleSeatStatus();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.event_seat_rounded,
            color: !isBlocked
                ? isSelected
                    ? Colors.orange.shade900
                    : Colors.grey
                : Colors.black54),
      ),
    );
  }
}
