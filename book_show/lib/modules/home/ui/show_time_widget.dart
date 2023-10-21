import 'package:book_show/modules/home/ui/show_time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowTimes extends StatelessWidget {
  final List<String> showTimes;

  const ShowTimes(this.showTimes, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                    text: "Date: ",
                    style: Theme.of(context).textTheme.displaySmall,
                    children: [
                      TextSpan(
                          text: "Jul 23,2023",
                          style: Theme.of(context).textTheme.labelSmall)
                    ])),
                const Icon(Icons.calendar_today_outlined)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: BlocProvider(
                create: (_) => ShowTimeBloc(),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: showTimes.indexed
                      .map((e) => TimeWidget(e.$2, e.$1))
                      .toList(),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  final String time;
  final int index;

  const TimeWidget(this.time, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 10.0),
      child: BlocBuilder<ShowTimeBloc, int>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              context.read<ShowTimeBloc>().select(index);
            },
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  color:
                      state == index ? Colors.orange.shade900 : Colors.black12,
                  borderRadius: const BorderRadius.all(Radius.circular(4))),
              child: Center(
                  child: Text(time,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: state == index ? Colors.white : Colors.grey))),
            ),
          );
        },
      ),
    );
  }
}
