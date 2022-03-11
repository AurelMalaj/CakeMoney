import 'package:cakemoney/screens/addNewMovement.dart';
import 'package:cakemoney/screens/entrance.dart';
import 'package:cakemoney/model/movement.dart';
import 'package:cakemoney/model/wallet.dart';
import 'package:flutter/material.dart';
import 'package:cakemoney/widgets/ScreenAddNewMovement/navbar.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String title = "CakeMoney";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  // final List<Movement> mockMovement = <Movement>[
  //   Movement(value: 22, category: "test")
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 7, 33, 116),
        ),
        //crtl .
        body: Column(
          children: [
            Text('Totale: ${Provider.of<Wallet>(context).sum()}',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 7, 7))),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount:
                    Provider.of<Wallet>(context).possibileCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 121, 145, 224),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            '${Provider.of<Wallet>(context).possibileCategories[index]} : ${Provider.of<Wallet>(context).sumByCategory(Provider.of<Wallet>(context).possibileCategories[index])}',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddNewMovement()),
            );
          }),
          child: const Icon(Icons.add),
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
