// Future<String> fetchUserData() async {
//   await Future.delayed(Duration(seconds: 2)); // simulate network
  
//   return "User data loaded!";
// }

// void main() async {
//   print("Start");

//   // await pauses only this function, not the whole program
//   String data = await fetchUserData();

//   print(data);
//   print("End");
// }



Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2)); // simulate network
  return "User data loaded!";
}

void main() {
  print("Start");

  // No await → we use .then() to handle the result
  fetchUserData().then((data) {
    print(data);
  });

  print("End");
}
