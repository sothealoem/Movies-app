import 'package:flutter/material.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/main_screen.dart';

class ActionMoviesScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/f/f9/Edge_of_Tomorrow_Poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/91/300_Rise_of_an_Empire.jpg',
    'https://upload.wikimedia.org/wikipedia/en/7/7e/Divergent_film_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/81/The_Equalizer_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/0/09/Hercules_%282014_film%29.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/f/f9/Edge_of_Tomorrow_Poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/91/300_Rise_of_an_Empire.jpg',
    'https://upload.wikimedia.org/wikipedia/en/7/7e/Divergent_film_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/81/The_Equalizer_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/0/09/Hercules_%282014_film%29.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/81/The_Equalizer_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/0/09/Hercules_%282014_film%29.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07041f),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Action Movies',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color.fromARGB(97, 255, 255, 255),
                shape: BoxShape.circle),
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 3, // Number of items in a row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10.0, // Vertical spacing between items
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrls[index],
                height: 300,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
