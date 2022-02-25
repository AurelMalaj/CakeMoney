import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';

class Entrance extends StatefulWidget {
  const Entrance({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  // MockTest per display info in ListView
  final List<Movement> mockMovement = <Movement>[
    Movement(value: 23.03, category: "pinoli"),
    Movement(value: 606.80, category: "pinguini")
  ];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(
                child: Text(
                    'Entry ${entries[index]}')), // per andare a capo ( o childer o /n)
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),

      // list? // card?

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
