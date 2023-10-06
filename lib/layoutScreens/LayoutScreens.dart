import 'package:flutter/material.dart';

class LayoutScreens extends StatelessWidget {
  const LayoutScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lists"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: columnLayout(),
        ),
      ),
    );
  }
}

Widget columnLayout() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Home"),
      Text("Profile"),
      Text("Home"),
    ],
  );
}

Widget rowLayout() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Home"),
      Text("Profile"),
      Text("Home"),
    ],
  );
}

Widget stackLayout() {
  return const Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Text("Home"),
      Text("Profile"),
      Text("Home"),
    ],
  );
}
