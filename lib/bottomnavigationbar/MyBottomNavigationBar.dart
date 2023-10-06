import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _listOfItems = <Widget>[
    Icon(Icons.home, size: 100,),
    Icon(Icons.search,size: 100),
    Icon(Icons.settings, size: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: _currentIndex,
          onTap: _updatedIndex,
        ),
        body: Center(
          child: _listOfItems[_currentIndex],
        ),
      ),
    );
  }

  void _updatedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
