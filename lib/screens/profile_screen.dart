import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://scontent.fpnh8-1.fna.fbcdn.net/v/t39.30808-1/367006851_1020381202726304_296740625906113596_n.jpg?stp=dst-jpg_s720x720&_nc_cat=110&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGdGf55-WQX4MsRssd4etI4IcGRBK8Sof8hwZEErxKh_8hCZJoOhdnYAyQvMR7vtWfNGe62BQPXd4pHOHy5KIHg&_nc_ohc=DhjWGxvrjicQ7kNvgH8yNw-&_nc_ht=scontent.fpnh8-1.fna&_nc_gid=ACn0_5G4nWyViILwMCQmIFz&oh=00_AYAmKR-QMCFOK4jzOCuCg4VokiC-WfW5N8Ef1awQQgT1Ng&oe=66D516EA'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Loem Sothea',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '@Naomi23pink',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(37, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.person_outline,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  title: const Text(
                    'Account Settings',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  selectedTileColor: const Color(0xff26233e),
                  onTap: () {
                    // Handle tap
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.notifications_outline,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: const Text(
                    'Notification',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.time_outline,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: const Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.bookmark_outline,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  title: const Text(
                    'My Subcription',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.settings_outline,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: const Text(
                    'Setting',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.help_circle_outline,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: const Text(
                    'Help',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(15, 255, 255, 255),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Ionicons.log_out_outline,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  selected: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    // Handle tap
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
