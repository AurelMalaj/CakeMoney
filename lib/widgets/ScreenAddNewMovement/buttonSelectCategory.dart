import 'package:cakemoney/model/movement.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/wallet.dart';

class ButtonSelectCategory extends StatefulWidget {
  // Funzione da passare come callback al widgett buttonAddCategory

  final Function(String? value) onchange;
  const ButtonSelectCategory({Key? key, required this.onchange})
      : super(key: key);

  @override
  State<ButtonSelectCategory> createState() => _ButtonSelectCategoryState();
}

class _ButtonSelectCategoryState extends State<ButtonSelectCategory> {
  //potresti avere dei record senza categoria
  //colpa anche del ?
  String dropdownValue = "Entrata generica";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        //richiamo la callback per quando avvengo delle modifiche al valore category
        this.widget.onchange(newValue);
      },
      items: Provider.of<Wallet>(context, listen: true)
          .possibileCategories
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
