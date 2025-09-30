void main() {
  int score = 85;

  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 75) {
    print("Grade: B");
  } else {
    print("Grade: C");
  }

  // for loop
  for (int i = 1; i <= 5; i++) {
    print("Count: $i");
  }

  // while loop
  int n = 3;
  while (n > 0) {
    print("n = $n");
    n--;
  }

  // switch
  String day = "Monday";
  switch (day) {
    case "Monday":
      print("Start of the week");
      break;
    case "Friday":
      print("Weekend coming!");
      break;
    default:
      print("Midweek day");
  }
}
