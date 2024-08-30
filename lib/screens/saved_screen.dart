import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movies_app/screens/widgets/saved_items.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});
  final List<SavedItem> _savedItems = const [
    SavedItem(
      title: 'Captain America',
      genre: 'Action, Advanture',
      image: 'assets/22.png',
      icon: Ionicons.ellipsis_vertical,
    ),
    SavedItem(
      title: 'Fifty Shades of Grey',
      genre: 'Drama, Romance',
      image: 'assets/fiftyShades.jpg',
      icon: Ionicons.ellipsis_vertical,
    ),
    SavedItem(
      title: 'Me Before You',
      genre: 'Drama, Romance',
      image: 'assets/mebeforyou.jpg',
      icon: Ionicons.ellipsis_vertical,
    ),
    SavedItem(
      title: 'Tarot',
      genre: 'Horror',
      image: 'assets/tarot.jpg',
      icon: Ionicons.ellipsis_vertical,
    ),
    SavedItem(
      title: 'Friend',
      genre: 'Drama',
      image: 'assets/22.png',
      icon: Ionicons.ellipsis_vertical,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Saved',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: _savedItems.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (contex, index) {
          return _savedItems[index];
        },
      ),
    );
  }
}
