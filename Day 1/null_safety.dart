void main() {
  String? name; // nullable
  String city = "Colombo"; // non-nullable

  // Null check with if
  if (name == null) {
    print("Name is null");
  }

  // Null-aware operator ??
  print(name ?? "Guest"); // prints "Guest"

  // Null assertion !
  name = "Chamod";
  print(name!.toUpperCase());

  // Null-aware access ?.
  String? college;
  print(college?.toUpperCase()); // won't crash, prints null
}
