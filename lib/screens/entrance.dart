import 'package:cakemoney/screens/home.dart';
import 'package:flutter/material.dart';

class Entrance extends StatelessWidget {
  const Entrance({Key? key, required this.title}) : super(key: key);

  void bottomBarRoute(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

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
        )), // list? // card?
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note_add),
          label: 'Add',
        )
      ]),
    );
  }
}
