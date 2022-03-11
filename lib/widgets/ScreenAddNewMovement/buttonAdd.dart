//Widget che alla pressione del bottene + nella homepage permette di passare all'inserimento
//di nuovi movimenti

import 'package:cakemoney/screens/addNewMovement.dart';
import 'package:cakemoney/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../model/movement.dart';
import '../../model/wallet.dart';
import 'buttonSelectCategory.dart';

class ButtonAdd extends StatefulWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  State<ButtonAdd> createState() => _ButtonAddState();
}

class _ButtonAddState extends State<ButtonAdd> {
  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    TextEditingController noteController = TextEditingController();
    String? valueCategory = "";

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
                controller: numberController,
                decoration: InputDecoration(labelText: "Enter your number"),
                keyboardType: TextInputType.number,
              ),
            ),
            // Text('${(Provider.of<Wallet>(context, listen: true).sum())} €'),

            // Text('ciao'),
            //seleziona categoria
            ButtonSelectCategory(onchange: (String? value) {
              //Alle modifiche nel componente le richiamo qui nella callback
              valueCategory = value;
            }),
            //Inserimento note
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                  controller: noteController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'note',
                  )),
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: (() {
                if (valueCategory != null && valueCategory!.isNotEmpty) {
                  Provider.of<Wallet>(context, listen: false).addMovemnt(
                      Movement(
                          value: double.parse(numberController.text),
                          category: valueCategory,
                          note: noteController.text));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                } else {
                  AlertDialog(title: Text("one or more filed are incorect"));
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
