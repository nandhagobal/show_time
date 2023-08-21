import 'package:flutter/material.dart';

import '../modules/home/domain/models/movie.dart';
import '../modules/home/ui/movie_tile.dart';

Widget movieHorizontalList(
    BuildContext context, String title, Stream<List<Movie>> movieStream) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      StreamBuilder(
          stream: movieStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    Movie? movie = snapshot.data?[index];
                    if (movie != null) {
                      return MovieTile(movie);
                    } else {
                      return const Placeholder();
                    }
                  },
                ),
              );
            } else {
              return const SizedBox(
                height: 200,
                child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.redAccent,
                    )),
              );
            }
          })
    ],
  );
}
