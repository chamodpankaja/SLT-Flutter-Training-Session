class User {
  late String username; // will assign later

  void setUser(String name) {
    username = name;
  }

  void printUser() {
    print("Username: $username");
  }
}

void main() {
  User u = User();
  
  // Initialize later
  u.setUser("Intern123");
  u.printUser(); // prints: Username: Intern123
}
