void reverseInitials(String f, String l) => print(
  "${f[f.length - 1].toUpperCase()}. ${l[l.length - 1].toUpperCase()}.",
);

void main() {
  reverseInitials("Johnny", "Depp");
  reverseInitials("Tom", "Cruise");
}
