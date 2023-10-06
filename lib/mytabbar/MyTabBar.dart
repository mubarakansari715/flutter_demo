import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Search",
                  icon: Icon(Icons.search),
                ),
                Tab(
                  text: "Setting",
                  icon: Icon(Icons.settings),
                ),
              ],
              indicatorColor: Colors.red,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
              indicatorWeight: 5,
              indicatorPadding: const EdgeInsets.all(5),
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(
                Icons.home,
                size: 100,
              ),
              Icon(
                Icons.search,
                size: 100,
              ),
              Icon(
                Icons.settings,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
