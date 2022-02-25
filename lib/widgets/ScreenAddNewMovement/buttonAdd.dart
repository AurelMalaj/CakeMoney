//Widget che alla pressione del bottene + nella homepage permette di passare all'inserimento
//di nuovi movimenti

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'buttonSelectCategory.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text(
          '+',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 700,
                color: Color.fromARGB(255, 156, 155, 152),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextField(
                          decoration:
                              InputDecoration(labelText: "Enter your number"),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      const ButtonSelectCategory(),
                      ElevatedButton(
                        child: const Text('Add'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
