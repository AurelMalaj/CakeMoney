import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';
import 'package:provider/provider.dart';

import '../model/wallet.dart';

class Exit extends StatefulWidget {
  const Exit({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ExitState createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  @override
  int _index = 0;

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
          itemCount: Provider.of<Wallet>(context).exitMovements().length,
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
                      '${Provider.of<Wallet>(context).exitMovements()[index].value} €',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      'Categoria : ${Provider.of<Wallet>(context).exitMovements()[index].category}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Note : ${Provider.of<Wallet>(context).exitMovements()[index].note}',
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
