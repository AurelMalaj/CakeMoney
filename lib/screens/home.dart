import 'package:cakemoney/screens/entrance.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/model/wallet.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, List<Movement>? wallet})
      : super(key: key);

  final String title;
  List<Movement> wallet = []; //Movement(value: 132.4, category: "Paghetta")

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Variabile per creazione di una lista wallet di movement da avere disponible nel widget
  List<Movement> _wallet = [];
  //Variabile per visualizzare a schermo l'iserimento test di un valore di esempio in _wallet
  String _testo = "";

  @override
  void initState() {
    super.initState();
    _wallet = widget.wallet;
  }

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
              'You have pushed the button this many times:',
            ),
            Text(_testo),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (
            /* --- Prova di display dati dalla classe wallet-Movement
            () {
            setState(
              () {
              _wallet.add(Movement(value: 33, category: "banane"));
              _testo = _wallet[0].category;
            });
          }*/
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Entrance(
                      title: "Prova",
                    )),
          );
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
