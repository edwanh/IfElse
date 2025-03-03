void main() {
  int age = 15;
  bool hasParentalConsent = true;
  int movieAgeRating = 16;
  if (age >= movieAgeRating ||
      hasParentalConsent && movieAgeRating - age <= 2) {
    print('Darf gucken');
  } else {
    print('Darf nicht gucken');
  }
}
