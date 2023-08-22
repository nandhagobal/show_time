import 'dart:ffi';

import 'package:book_show/core/config/app_config.dart';
import 'package:book_show/modules/home/domain/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie _movie;

  const MovieDetailsScreen(this._movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title:
            Text(_movie.title, style: Theme.of(context).textTheme.labelMedium),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 480,
                      child: Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 1)),
                              width: 290,
                              height: 420,
                              child: Center(
                                child: Image.network(
                                    "${Config.IMAGE_BASE_URL}"
                                    "${_movie.posterPath}",
                                    height: 400,
                                    width: 300),
                              )))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(_movie.title,
                            style: Theme.of(context).textTheme.displayLarge),
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
                            style: Theme.of(context).textTheme.displayMedium,
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("Overview",
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Text(_movie.overview,
                          style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 600,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(child: Text("Book Show", style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
