import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';

class Exit extends StatefulWidget {
  const Exit({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ExitState createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  @override
  int _index = 0;

  final List<Movement> mockMovement = <Movement>[
    Movement(value: 25.00, category: "Spesa", note: "Spesa fatta per 3 giorni"),
    Movement(
        value: 200.00, category: "Itech", note: "Acquisto di Mouse e tastiera"),
    Movement(
        value: 50.00, category: "Bollete", note: "Bolletta della luce mensile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 206, 63, 63),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: mockMovement.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 137, 137),
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
