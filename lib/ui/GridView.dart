import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView.Builder"),
        ),
        body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,   // number of columns
            crossAxisSpacing: 10, // spacing between columns
            mainAxisSpacing: 10,  // spacing between rows
          ),
          itemCount: 6, // total number of items
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: Center(
                child: Text("Item $index"),
              ),
            );
          },
        ) ,
      ),
    );
  }
}




