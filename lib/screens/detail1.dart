import 'package:flutter/material.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/screens/main_screen.dart';
import 'package:movies_app/screens/video_player.dart';
import 'package:movies_app/screens/widgets/episode.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

class Detail1Screen extends StatefulWidget {
  @override
  State<Detail1Screen> createState() => _Detail1ScreenState();
}

class _Detail1ScreenState extends State<Detail1Screen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff07041f),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        actions: [
          IconButton(
            icon: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(97, 255, 255, 255),
                  shape: BoxShape.circle),
              child: const Icon(Icons.bookmark, color: Colors.white),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(97, 255, 255, 255),
                  shape: BoxShape.circle),
              child: const Icon(Icons.ios_share_outlined, color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image.network(
                    'https://image.tmdb.org/t/p/original/ykUEbfpkf8d0w49pHh0AD2KrT52.jpg',
                    width: double.infinity,
                    height: 390,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Text(
                    "Disney's Aladdin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "2019 · Adventure, Comedy · 2h 8m",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoPlayerScreen()),
                            );
                          },
                          icon:
                              const Icon(Icons.play_arrow, color: Colors.white),
                          label: const Text(
                            "Play",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download, color: Colors.white),
                          label: const Text(
                            "Download",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find a way to become a prince...",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    child: TabBar(
                      labelStyle: TextStyle(fontSize: 14),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.red,
                      indicatorColor: Colors.red,
                      dividerColor: Colors.transparent,
                      controller: _tabController,
                      tabs: const [
                        Tab(text: "Episod"),
                        Tab(text: "similar"),
                        Tab(text: "about"),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        EpisodeWidget(
                          image: 'assets/fiftyShades.jpg',
                          title: 'Trialer',
                          icon: Icons.download,
                          description:
                              'Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth...',
                        ),
                        EpisodeWidget(
                          image: 'assets/fiftyShades.jpg',
                          title: 'Trialer',
                          icon: Icons.download,
                          description:
                              'Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth...',
                        ),
                        EpisodeWidget(
                          image: 'assets/joker.png',
                          title: 'Trialer',
                          icon: Icons.download,
                          description:
                              'Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth...',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            // Similar movies list goes here
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodeCard(String title, String description, String imageUrl) {
    return Container(
      width: 160,
      height: 200,
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
