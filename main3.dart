enum Weekday { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  Weekday? weekday;
  switch (Weekday) {
    case 1:
      weekday == Weekday.monday || weekday == Weekday.tuesday;
      {
        print('Montage und Dienstage sind anstrengend');
      }
    case 2:
      weekday == Weekday.wednesday || weekday == Weekday.thursday;
      {
        print('Mittwoch und Donnerstag sind ok');
      }
    case 3:
      weekday == Weekday.friday;
      {
        print('Freitag ist super');
      }
    default:
      {
        print('Kein Tag ausgewählt');
      }
  }
}
