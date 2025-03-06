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
    averagePoints = totalPoints / points.length;
  }
  print('Die Gesamtsumme ist $totalPoints');
  print('Der Durschnitt ist $averagePoints');
}
