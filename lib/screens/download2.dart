import 'package:flutter/material.dart';

class Download2 extends StatefulWidget {
  @override
  _Download2State createState() => _Download2State();
}

class _Download2State extends State<Download2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = ["Downloaded", "Downloading"]; // Dynamic tab titles

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Tab Bar"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.red, // Active tab color
              unselectedLabelColor: Colors.grey, // Inactive tab color
              indicatorColor: Colors.red, // Indicator color
              indicatorWeight: 2.0, // Indicator thickness
              tabs: tabs.map((String name) => Tab(text: name)).toList(),
            ),
          ),
        ),
        backgroundColor: Colors.black, // Set your custom background color here
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((String name) {
          return Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          );
        }).toList(),
      ),
      backgroundColor: Colors.black, // Set your custom background color here
    );
  }
}
