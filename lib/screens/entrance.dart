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
    Movement(
        value: 23.03, category: "pinoli", note: "Questi pinoli erano costosi"),
    Movement(
        value: 606.80,
        category: "pinguini",
        note: "Questi pinguini sono economici"),
    Movement(value: 54.80, category: "vetro", note: "Helicopter Helicopter")
  ];

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
        itemCount: mockMovement.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '${mockMovement[index].value} €',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    'Categoria : ${mockMovement[index].category}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Note : ${mockMovement[index].note}',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17),
                  )
                ],
              ),
            ),
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
