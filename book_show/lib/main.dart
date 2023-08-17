import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:book_show/modules/home/domain/usecase/movie_usecase.dart';
import 'package:book_show/modules/home/infra/datasource/movie_datasource.dart';
import 'package:book_show/modules/home/repository/movie_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:book_show/modules/home/infra/models/movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Movie>>? movie;

  @override
  void initState() {
    MovieDataSource dataSource = MovieDataSource();
    MovieRepository movieRepository = MovieRepositoryImpl(dataSource);
    MovieUseCase movieUseCase = MovieUseCase(movieRepository);

    setState(() {
      movie = movieUseCase.fetchNowPlayingMovie();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
                future: movie,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text("Total movies: ${snapshot.data?.length}");
                  } else if (snapshot.hasError) {
                    return const Text("Something went wrong..");
                  } else {
                    return const Text("Loading...");
                  }
                })
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
