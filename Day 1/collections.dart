void main() {
  // List
  List<String> fruits = ["Apple", "Banana", "Mango"];
  fruits.add("Orange");
  print(fruits);

  // Loop through list
  for (var fruit in fruits) {
    print(fruit);
  }

  // Map
  Map<String, int> scores = {
    "Chamod": 95,
    "Intern": 88,
    "Trainer": 100,
  };
  print(scores["Chamod"]);
}
