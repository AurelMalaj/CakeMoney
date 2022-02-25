import 'package:cakemoney/model/movement.dart';

class Wallet {
  final List<Movement> movements;

  Wallet({
    required this.movements,
  });

  double sum() {
    double sum = 0;
    for (var values in movements) {
      sum = sum + values.value;
    }
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
