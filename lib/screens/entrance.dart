import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';

class Entrance extends StatefulWidget {
  const Entrance({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  int _index = 0;
  // MockTest per display info in ListView
  final List<Movement> mockMovement = <Movement>[
    Movement(value: 25.00, category: "Paghetta", note: "Paghetta settimnale"),
    Movement(value: 1200.00, category: "Stipendio", note: "Stipendio Marzo"),
    Movement(
        value: 10, category: "Altre entrate", note: "Debito amico per regalo"),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      'Categoria : ${mockMovement[index].category}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Note : ${mockMovement[index].note}',
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),

        // list? // card?

        bottomNavigationBar: Navbar(
          onTap: ((index) {
            setState(() {
              _index = index;
            });
          }),
        ));
  }
}
