import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/models/movies.dart';
import 'package:movies_app/screens/categories/action_movie.dart';
import 'package:movies_app/screens/detail1.dart';
import 'package:movies_app/screens/detail_screen.dart';
import 'package:movies_app/screens/widgets/category_chip.dart';
import 'package:movies_app/screens/widgets/header_seeall.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            'https://imageio.forbes.com/specials-images/imageserve/5d6a0922fead28000892b2b7/Official-poster-for-Warner-s--Joker-/960x0.jpg?height=900&width=607&fit=bounds',
        category: 'Drama, Thriller',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Fifty Shades of Grey',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/7/73/Fifty_Shades_of_Grey_poster.jpg',
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
  final List<Movie> latestMovies = [
    Movie(
        title: 'Damsel',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/f/f5/Damsel_2024_poster2.jpg',
        category: 'Adventure, Comedy',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'The Idea of You',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/f/f7/The_Idea_of_You_film_poster.jpg',
        category: 'Drama, Thriller',
        description:
            'Aladdin 2019 13 R30021 A3 Poster on Photo Paper - Glossy Thick (16.5/11.7 inch)(42/30 cm) - Film Movie Posters Wall Decor Art Actor Actress Gift Anime Auto Cinema Room Wall Decoration'),
    Movie(
        title: 'Monkey Man',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/2/2b/Monkey_Man_film.jpg',
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
  final List<String> _chipIndex = [
    'All',
    'Comedy',
    'Horror',
    'Action',
    'Romance',
    'Romance'
  ];

  final List<Widget> _pages = [
    ActionMoviesScreen(),
    ActionMoviesScreen(),
    ActionMoviesScreen(),
    ActionMoviesScreen(),
    ActionMoviesScreen(),
    ActionMoviesScreen(),
  ];
  final List<String> _imagePaths = [
    'assets/22.png',
    'assets/joker.png',
    'assets/fiftyShades.jpg',
    'assets/22.png',
    'assets/22.png',
  ];
  final PageController _controller = PageController();

  int currentIndex = 0;

  int indexIndicator = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07041f),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 390,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _imagePaths.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        _imagePaths[index],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 170,
                  right: 0,
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: _imagePaths.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.red,
                      dotHeight: 7.0,
                      dotWidth: 7.0,
                      expansionFactor: 4,
                      spacing: 8.0,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Categories',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 2.0,
                runSpacing: 8.0,
                children: List.generate(_chipIndex.length, (index) {
                  return CategoryChip(
                    label: _chipIndex[index],
                    index: index,
                    currentIndex: currentIndex,
                    onSelected: (int selectedIndex) {
                      setState(() {
                        currentIndex = selectedIndex;
                        navigateToScreen(selectedIndex);
                      });
                    },
                  );
                }),
              ),
            ),

            // Most Popular//
            const HeaderSeeAll(
              headerTitle: 'Most Popular',
              optional: 'see all',
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mostPopularMovies.length,
                itemBuilder: (context, index) {
                  final movie = mostPopularMovies[index];
                  return _buildMovieItem(movie);
                },
              ),
            ),
            const HeaderSeeAll(
              headerTitle: 'Latest Movies',
              optional: 'see all',
            ),

            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mostPopularMovies.length,
                itemBuilder: (context, index) {
                  final movie = latestMovies[index];
                  return _buildMovieItem(movie);
                },
              ),
            ),

            const HeaderSeeAll(
              headerTitle: 'Upcomming',
              optional: 'see all',
            ),

            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mostPopularMovies.length,
                itemBuilder: (context, index) {
                  final movie = mostPopularMovies[index];
                  return _buildMovieItem(movie);
                },
              ),
            ),
          ],
        ),
      ),
      //bottom Navigationbar//
    );
  }

  Widget _buildCategoryChip(
    String label,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: currentIndex == index
                ? Colors.red
                : const Color.fromARGB(92, 97, 93, 93),
          ),
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  Widget _smoothPageIndicator() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: [
              Image.asset(
                'assets/22.png',
                width: double.infinity,
                height: 390,
                fit: BoxFit.cover,
              ),
              Image.network(
                'assets/22.png',
                width: double.infinity,
                height: 390,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotHeight: 12.0,
            dotWidth: 12.0,
            expansionFactor: 4,
            spacing: 8.0,
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  //Navigator to Screen
  void navigateToScreen(int index) {
    if (index >= 0 && index < _pages.length) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => _pages[index]));
    }
  }

  Widget _buildMovieItem(Movie movie) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail1Screen()),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  movie.imageUrl,
                  width: 120,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              movie.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
