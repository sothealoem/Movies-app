import 'package:flutter/material.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/main_screen.dart';
import 'package:movies_app/screens/widgets/download_items.dart';
import 'package:ionicons/ionicons.dart';

class DownloadScreen extends StatefulWidget {
  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen>
    with TickerProviderStateMixin {
  int _selectedIndex = 3; // Default selected index for "Downloads"

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Download',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              dividerColor: Colors.transparent,
              controller: _tabController,
              labelStyle: TextStyle(fontSize: 15),
              tabs: const [
                Tab(
                  text: "Downloaded",
                ),
                Tab(text: "Downloading"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 130,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  DownloadItem(
                    image: 'assets/22.png',
                    title: 'Captain America',
                    icon: Ionicons.ellipsis_vertical,
                    genre: 'Action,Adventure',
                    time: '2:05:32',
                    size: '1.1G',
                  ),
                  DownloadItem(
                    image: 'assets/fiftyShades.jpg',
                    title: 'Trialer',
                    icon: Ionicons.ellipsis_vertical,
                    genre: 'Action,Adventure',
                    time: '1:35:21',
                    size: '1.5G',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadItem(String title, String genre, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF2C2C2E),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            genre,
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
