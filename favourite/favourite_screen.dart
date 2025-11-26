import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Screen"),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 100, itemBuilder: (BuildContext context, int index) {
              Text("");
          },
        )],
      ),

    );
  }
}
