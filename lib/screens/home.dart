import 'package:cakemoney/screens/addNewMovement.dart';
import 'package:cakemoney/screens/entrance.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/model/wallet.dart';
import 'package:flutter/material.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String title = "CakeMoney";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: _index == 0
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'diagramma', //aggiungere widget diagramma a torta
                    ),
                  ],
                ),
              )
            : Entrance(title: 'Sono le entrate'),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddNewMovement()),
            );
          }),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: Navbar(
          onTap: ((index) {
            setState(() {
              _index = index;
            });
          }),
        ));
  }
}
