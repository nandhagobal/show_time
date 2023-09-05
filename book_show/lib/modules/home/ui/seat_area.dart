import 'package:book_show/modules/home/ui/seat_widget.dart';
import 'package:flutter/material.dart';

class SeatArea extends StatelessWidget {
  late final int _rowCount;
  late final int _columnCount;
  late final List<String> rowAlphabet;

  SeatArea(this._rowCount, this._columnCount, {super.key}) {
    rowAlphabet = generateRowAlphabet(_rowCount);
  }

  Iterable<Seat> generateRow(int rowNumber) sync* {
    for (int column = 0; column < _columnCount; column++) {
      var id = "${rowAlphabet[rowNumber]}$column";
      yield Seat(id);
    }
  }

  List<Widget> generateSeats() {
    List<Widget> seats = [];
    for (int row = 0; row < _rowCount; row++) {
      var rowSeats = Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(rowAlphabet[row]), ...generateRow(row).toList()]);
      seats.add(rowSeats);
    }
    return seats;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.black12),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Center(
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 350,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...generateSeats(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.event_seat_rounded,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text("Available",
                          style: TextStyle(color: Colors.grey.shade500)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.event_seat_rounded,
                        color: Colors.orange.shade900),
                    Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Selected",
                            style: TextStyle(color: Colors.grey.shade500)))
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.event_seat_rounded,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text("Reserved",
                          style: TextStyle(color: Colors.grey.shade500)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<String> generateRowAlphabet(int row) {
    if (row > 26 || row <= 0) throw Exception();
    List<String> alphabet = [];
    for (int i = 0; i < row; i++) {
      alphabet.add(String.fromCharCode(i + 65));
    }
    return alphabet;
  }
}
