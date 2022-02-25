import 'package:cakemoney/screens/entrance.dart';
import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, List<Movement>? wallet})
      : super(key: key);

  final String title;
  String testo = " ";
  List<Movement> wallet = []; //Movement(value: 132.4, category: "Paghetta")

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(widget.testo),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            widget.wallet.add(Movement(value: 33, category: "banane"));
            widget.testo = widget.wallet[0].category;
          }
              /*() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Entrance(
                      title: "Prova",
                    )
                    ),*/
              ),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
