import 'package:flutter/material.dart';
import 'package:movies_app/models/movies.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;
  final List<Movie> mostPopularMovies = [
    Movie(
        title: 'Aladdin',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Adventure, Comedy',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Joker',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Drama, Thriller',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Spider-Man',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Action, Adventure',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Spider-Man',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Action, Adventure',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Spider-Man',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Action, Adventure',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Spider-Man',
        imageUrl:
            'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2023/02/aladdin-liveaction.jpg',
        category: 'Action, Adventure',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
  ];
  MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 390,
                  child: Image.asset(
                    'assets/22.png',
                    width: double.infinity,
                    height: 390,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(movie.description),
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Play')),
                ElevatedButton(onPressed: () {}, child: Text('Download')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
