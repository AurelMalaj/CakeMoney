//Widget che alla pressione del bottene + nella homepage permette di passare all'inserimento
//di nuovi movimenti

import 'package:cakemoney/screens/addNewMovement.dart';
import 'package:cakemoney/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'buttonSelectCategory.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Color.fromARGB(255, 156, 155, 152),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            //seleziona categoria
            const ButtonSelectCategory(),
            //Inserimento note
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'note',
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
