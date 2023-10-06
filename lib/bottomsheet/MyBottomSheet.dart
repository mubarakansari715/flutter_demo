import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: const BottomSheetDialogWidget(),
      ),
    );
  }
}

//implementation of bottom sheet
class BottomSheetDialogWidget extends StatelessWidget {
  const BottomSheetDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              builder: (BuildContext context) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      clickButton(context);
                    },
                    child: const Text("close"),
                  ),
                );
              });
        },
        child: const Text("Open BottomSheet"),
      ),
    );
  }

  void clickButton(BuildContext context) {
    Navigator.pop(context);
  }
}
