void main() {
  // // Explicit types
  int age = 25;
  double price = 99.99;
  String name = "Chamod";
  bool isActive = true;

  // // var lets Dart infer type
  var city = "Colombo";

  // // final & const
  final country = "Sri Lanka"; // runtime constant
  const pi = 3.14159;          // compile-time constant

   print("Name: $name, Age: $age, City: $city");
}

