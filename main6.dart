import 'dart:io';

void main() {
  print("Gib die erste Zahl ein: ");
  double? number1 = double.tryParse(stdin.readLineSync()!);
  if (number1 == null) {
    print("Ungültig Bitte eine Zahl eingeben");
    // continue;
    return;
  }

  print("Gib ein Rechenzeichen (+, -, *, /) ein: ");
  String? mathOperator = stdin.readLineSync();
  if (mathOperator == null || !['+', '-', '*', '/'].contains(mathOperator)) {
    print("Ungültiges Zeichen Bitte +, -, *, / eingeben.");
    //continue;
    return;
  }

  print("Gib die zweite Zahl ein: ");
  double? number2 = double.tryParse(stdin.readLineSync()!);
  if (number2 == null) {
    print("Ungültig. Bitte eine Zahl eingeben.");
    //continue;
    return;
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
      solution = number1 / number2;
      break;
    default:
      print("Ungültig");
    //continue;
  }

  print("Ergebnis: $solution");
}
