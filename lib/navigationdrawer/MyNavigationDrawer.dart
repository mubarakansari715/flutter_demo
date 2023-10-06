import 'package:flutter/material.dart';

final _key = GlobalKey<ScaffoldState>();

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _key,
        appBar: AppBar(
          title: const Text("My First Name"),
          leading: IconButton(
              onPressed: () {
                _key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: Center(child: Text("Navigation"),),
              ),
              ListTile(title: Text("Profile")),
              ListTile(
                title: Text("Setting"),
              ),
              ListTile(
                title: Text("About"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
