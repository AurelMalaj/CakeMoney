import 'package:flutter/material.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';
import 'package:provider/provider.dart';

import '../model/wallet.dart';

class Entrance extends StatefulWidget {
  const Entrance({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  int _index = 0;
  // MockTest per display info in ListView
  // final List<Movement> mockMovement = Wallet.movements;

  @override
  Widget build(BuildContext context) {
    //mockMovement.add(Provider.of<Wallet>(context).movements)
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: Provider.of<Wallet>(context).entranceMovements().length,
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
                      '${Provider.of<Wallet>(context).entranceMovements()[index].value} €',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      'Categoria : ${Provider.of<Wallet>(context).entranceMovements()[index].category}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Note : ${Provider.of<Wallet>(context).entranceMovements()[index].note}',
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
