// Simple function
void greet(String name) {
  print("Hello, $name!");
}

// Function with return type
int add(int a, int b) {
  return a + b;
}

// Optional & default parameters
void sayHello([String name = "Guest"]) {
  print("Hello, $name!");
}

void main() {
  greet("Interns");
  print("Sum: ${add(5, 7)}");
  sayHello();
  sayHello("Chamod");

  greetNamed();                        // ✅ Works
  greetNamed(firstName: "John");        // ✅ Works
  greetNamedRequired(firstName: "John", lastName: "Doe"); // ✅ Must provide all required
  // greetNamedRequired(firstName: "John"); // ❌ Error, lastName missing


  
  
}

// // Function with named parameters
// void introduce({required String name, int age = 18}) {
//   print("Name: $name, Age: $age");
// }

// // Named parameters
// void greetNamed({String? firstName, String? lastName}) {
//   print("Hello, ${firstName ?? 'Guest'} ${lastName ?? ''}");
// }

// // Positional parameters
// void greetPositional(String firstName, [String? lastName]) {
//   print("Hello, $firstName ${lastName ?? ''}");
// }


// Named parameters
void greetNamed({String? firstName, String? lastName}) {
  print("Hello, ${firstName ?? 'Guest'} ${lastName ?? ''}");
}

// Required named parameters
void greetNamedRequired({required String firstName, required String lastName}) {
  print("Hello, $firstName $lastName");
}

