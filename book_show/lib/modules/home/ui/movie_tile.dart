import 'package:book_show/core/config/app_config.dart';
import 'package:flutter/material.dart';

import '../domain/models/movie.dart';


class MovieTile extends StatelessWidget {
  final Movie _movie;

  const MovieTile(this._movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: 180, minWidth: 150),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1)),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.network(
                    "${Config.IMAGE_BASE_URL}${_movie.posterPath}",
                    fit: BoxFit.fitWidth),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                _movie.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.deepOrange,
                ),
                const SizedBox(width: 5),
                Text(
                  _movie.averageRating.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
