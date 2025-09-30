

Future<void> delayTask() async {
  await Future.delayed(Duration(seconds: 2));
  print("Middle");
}

Future<void> main() async {
  print("Start");

 // ---- With await ----
  await delayTask();

  // ---- Without await ----
  delayTask();

  print("End");
}