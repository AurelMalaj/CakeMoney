import 'package:cakemoney/model/movement.dart';
import 'package:flutter/material.dart';

//Creazione provider
class Wallet with ChangeNotifier {
  //si istanzia una lista
  late List<Movement> movements;
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
}
