import 'dart:io';

// a typical synchronous situation
void main() {
  print("What is your favorite thing about Earth?\nEnter your answer:");
  // to make this work, add "console": "terminal" in launch.json
  String userAnswer = stdin.readLineSync()!;
  print("Your favorite thing about Earth is ${userAnswer}. That's great!");
  print("End of the main function...");
  displayNames();
  awaitedDelayedFunction();
}

displayNames() {
  File namesFile = File("D:/dart_practice/names.txt");
  Future<String> fs = namesFile.readAsString();
  fs.then(
    (value) => print(value),
  );
  print("Names of members of Corridor Crew Youtube Channel: ");
}

Future<String> delayedFunction() {
  Future.delayed(
    Duration(seconds: 5),
  );
  return Future<String>.value(
      "I will get displayed after about five seconds... xD ");
}

Future<void> awaitedDelayedFunction() async {
  await delayedFunction().then(
    (value) {
      print(value);
    },
  );
  print("Mission Impossible Completed...");
}
