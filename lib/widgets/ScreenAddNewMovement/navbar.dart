import 'dart:io';
import 'package:cakemoney/screens/exit.dart';
import 'package:cakemoney/screens/entrance.dart';
import 'package:cakemoney/screens/home.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key, required this.onTap}) : super(key: key);
  final void Function(int index) onTap;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //onTap: widget.onTap,
      onTap: (index) {
        if (index == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (builContext) => MyHomePage()));
          // home
        }
        if (index == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builContext) => Entrance(title: 'Entrate')));

          // Entrate
        }
        if (index == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builContext) => Exit(title: 'Uscite')));
          // Uscite
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_turned_in),
          label: 'Entrate',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.announcement),
          label: 'Uscite',
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 35, 134, 21),
    );
  }
}
