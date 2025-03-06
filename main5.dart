import 'dart:ffi';

void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];
  for (String n in names) {
    print(n);
  }
  double totalPoints = 0;
  double averagePoints = 0;
  for (int p in points) {
    totalPoints += p;
  }
  averagePoints = totalPoints / points.length;

  print('Die Gesamtsumme ist $totalPoints');
  print('Der Durschnitt ist $averagePoints');

  Map<String, int> sortedList = {
    'Julietta': 4,
    'Benjamino': 5,
    'Hans-Günther': 4,
    'Evalinea': 2,
    'Fiona': 6,
    'Gregory': 6,
    'Leonhart': 3,
  };

  print('$sortedList');
}
