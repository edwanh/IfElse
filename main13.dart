import 'dart:io';
import 'dart:math';

void main() {
  List<String> history = [];

  while (true) {
    print("\nGib die erste Zahl ein oder exit zum Beenden ");
    String? input1 = stdin.readLineSync();
    if (input1 == 'exit') break;

    double? number1 = double.tryParse(input1!);
    if (number1 == null) {
      print("Ungültige Eingabe. Bitte eine Zahl eingeben.");
      continue;
    }

    print("Gib ein Rechenzeichen (+, -, *, /, ^ für Potenz) ein: ");
    String? mathOperator = stdin.readLineSync();
    if (mathOperator == null ||
        !['+', '-', '*', '/', '^'].contains(mathOperator)) {
      print("Ungültiges Zeichen Bitte +, -, *, / oder ^ eingeben.");
      continue;
    }

    print("Gib die zweite Zahl ein: ");
    double? number2 = double.tryParse(stdin.readLineSync()!);
    if (number2 == null) {
      print("Ungültige Eingabe. Bitte eine Zahl eingeben.");
      continue;
    }

    double solution = 0;
    switch (mathOperator) {
      case '+':
        solution = number1 + number2;
        break;
      case '-':
        solution = number1 - number2;
        break;
      case '*':
        solution = number1 * number2;
        break;
      case '/':
        if (number2 == 0) {
          print("Fehler, Durch Null teilen geht nicht");
          continue;
        }
        solution = number1 / number2;
        break;
      case '^':
        solution = pow(number1, number2).toDouble();
        break;
      default:
        print("Unbekannter Fehler");
        continue;
    }

    String result = "$number1 $mathOperator $number2 = $solution";
    history.add(result);
    print("Ergebnis: $solution");

    print("\nMöchtest du die Historie sehen? (ja/nein)");
    String? showHistory = stdin.readLineSync();
    if (showHistory?.toLowerCase() == 'ja') {
      print("\nRechenhistorie:");
      history.forEach(print);
    }
  }
}
