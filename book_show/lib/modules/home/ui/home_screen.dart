import 'package:book_show/core/config/di.dart';
import 'package:book_show/modules/home/ui/movie_bloc.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/movie_horizontal_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final MovieBloc _bloc = getIt.get<MovieBloc>();

  @override
  void initState() {
    _bloc.fetchNowPlayingMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
        Icons.menu,
        color: Colors.black,
      )),
      body: ListView(
        padding: const EdgeInsets.only(
            left: 30.0, right: 30.0, top: 10.0, bottom: 30.0),
        children: [
          Text(
            "WelCome My Show",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text("Find your favourite films..",
                style: Theme.of(context).textTheme.displayLarge),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    icon: const Icon(Icons.search),
                    hintText: "Search for movies",
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    enabledBorder: InputBorder.none),
              ),
            ),
          ),
          movieHorizontalList(context, "Now Playing", _bloc.nowPlayingMovies),
          movieHorizontalList(context, "Popular Movies", _bloc.nowPlayingMovies)
        ],
      ),
    );
  }
}
