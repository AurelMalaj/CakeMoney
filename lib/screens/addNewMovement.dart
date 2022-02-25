import 'package:flutter/material.dart';
import '../widgets/ScreenAddNewMovement/buttonAdd.dart';

// void main() => runApp(const Add());

class AddNewMovement extends StatelessWidget {
  const AddNewMovement({Key? key}) : super(key: key);

  static const String _title = 'New movement';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), centerTitle: true),
        body: const ButtonAdd(),
      ),
    );
  }
}
