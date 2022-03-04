import 'package:cakemoney/screens/addNewMovement.dart';
import 'package:cakemoney/screens/entrance.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/model/wallet.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String title = "CakeMoney";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'diagramma', //aggiungere widget diagramma a torta
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNewMovement()),
          );
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
