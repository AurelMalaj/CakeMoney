import 'package:flutter/material.dart';

class Entrance extends StatelessWidget {
  const Entrance({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          )),
        ));
  }
}
