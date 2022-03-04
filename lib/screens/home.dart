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

  final List<Movement> mockMovement = <Movement>[
    Movement(value: 1010.00, category: "Totale", note: "non sono ricco"),
    Movement(
        value: 500.00, category: "Spese Totali Mensili", note: "Escort e aperitivo"),
    Movement(
        value: 490.00, category: "Bollete", note: "A facc ro cazz"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 7, 33, 116),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: mockMovement.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 95, 111, 165),
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
        bottomNavigationBar: Navbar(
          onTap: ((index) {
            setState(() {
              _index = index;
            });
          }),
        ));
  }
}
