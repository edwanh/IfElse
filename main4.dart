enum Sex { male, female }

int age = 35;
void main() {
  Sex sex = Sex.male;
  switch (sex) {
    case Sex.male:
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 181,4m");
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 181,3m");
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 180,4m");
      }
    case Sex.female:
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 167,5m");
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 167,3 m");
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 167,2");
      }
  }
}
