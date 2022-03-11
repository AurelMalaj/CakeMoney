import 'package:cakemoney/model/movement.dart';
import 'package:flutter/material.dart';

//Creazione provider
class Wallet with ChangeNotifier {
  //si istanzia una lista
  late List<Movement> movements;
  final List<String> possibileCategories = [
    "Entrata generica",
    "Uscita generica",
    "Bollette/Utenze",
    "Paghetta",
    "Benzina",
    "Spesa"
  ];
  //costruttore per inizializzare movements
  Wallet() {
    movements = [];
  }
  //metodo per aggiungere movimenti alla lista
  void addMovemnt(Movement mov) {
    movements.add(mov);
    //rimane in ascolto per eddettuare l'inserimento di nuovi movimenti
  }

  double sum() {
    double sum = 0;
    for (var values in movements) {
      sum = sum + values.value;
    }
    notifyListeners();
    return sum;
  }

  double sumByCategory(String cat) {
    double sum = 0;
    for (var moves in movements) {
      if (moves.category == cat) {
        sum = sum + moves.value;
      }
    }
    return sum;
  }

  List<Movement> entranceMovements() {
    List<Movement> positiveMovements = [];
    movements.forEach((mov) {
      if (mov.value > 0) {
        positiveMovements.add(mov);
      }
    });
    return positiveMovements;
  }

  List<Movement> exitMovements() {
    List<Movement> neagtiveMovements = [];
    movements.forEach((mov) {
      if (mov.value < 0) {
        neagtiveMovements.add(mov);
      }
    });
    return neagtiveMovements;
  }
}
