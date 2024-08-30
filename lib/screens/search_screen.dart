import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movies_app/screens/widgets/header_seeall.dart';
import 'package:movies_app/screens/widgets/search_chip.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> imageUrls = [
    'https://upload.wikimedia.org/wikipedia/en/9/98/John_Wick_TeaserPoster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/f/f9/Edge_of_Tomorrow_Poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/9/91/300_Rise_of_an_Empire.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFF1C1C1E),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Ionicons.search,
                    color: const Color.fromARGB(174, 255, 255, 255)),
                hintStyle:
                    TextStyle(color: const Color.fromARGB(174, 255, 255, 255)),
                hintText: 'Search by title, genre, or actor',
                filled: true,
                fillColor: Color(0xff37364b),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                      50.0), // Set the border radius of the search bar
                ), // Set the background color of the search bar
              ),
            ),
            // Recent searches section
            const SizedBox(height: 20),
            const Text('Recent Searches'),
            Wrap(
              spacing: 8,
              children: [
                SearchChip(
                  label: 'Mavel',
                ),
                SearchChip(
                  label: 'Drama',
                ),
                SearchChip(
                  label: 'Star war',
                ),
                SearchChip(
                  label: 'Horror Movies',
                ),
                SearchChip(
                  label: 'Ghost',
                ),
              ],
            ),
            // Popular section
            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Popular',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
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
            // Recommendations section
            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Recommendations section',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
