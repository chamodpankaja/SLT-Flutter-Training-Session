void main() {
  int a = 10;
  int b = 3;

  // Arithmetic
  print("Addition: ${a + b}");
  print("Division: ${a / b}");
  print("Modulus: ${a % b}");

  // Relational
  print("Is a > b? ${a > b}");

  // Logical
  bool x = true, y = false;
  print("x && y = ${x && y}");
  print("x || y = ${x || y}");

  // Assignment
  int c = 5;
  //c += 2; // same as c = c + 2
  c = c + 2;
  print("c after += : $c");
}
