// In synchronous programming, tasks are executed in a direct flow which in some situations
// causes poor performance. Say, there's a task that takes relatively long time to execute,
//  then it's gonna affect the main flow of the program(for example:
// fetching data(extreme data-driven tasks) from databases, Network requests, blah blah blah).
// A better solution would be to execute the time-consuming task separately from the
// main flow, async programming can do just that for us ;)

import 'dart:async';
import 'dart:core';
import 'dart:io';

void main() async {
  typicalSyncFunction();
  await timeConsumingTaskCalled();
  final displayNames2Result = await displayNames2();
  print(displayNames2Result);
  await displayNames();
  await exampleFunction3();
  await firstFunctionCalled();
}

// a typical synchronous function
void typicalSyncFunction() {
  print("What is your favorite thing about Earth?\nEnter your answer:");
  // to make this work, add "console": "terminal" in launch.json
  final userAnswer = stdin.readLineSync();
  print("Your favorite thing about Earth is ${userAnswer}. That's great!");
  print("End of the typicalSyncFunction function...");
}

Future<int> timeConsumingTask() async {
  // print("Please, wait...");
  final delay = await Future<int>.delayed(const Duration(seconds: 5), () => 10);
  return Future<int>.value(delay);
}

timeConsumingTaskCalled() async {
  final delayresult = await timeConsumingTask();
  print(delayresult);
  print("I am executed after a delay of 5 seconds.");
}

// a typical asynchronous function
displayNames() {
  File namesFile = File("D:/dart_practice/names.txt");
  Future<String> fs =
      namesFile.readAsString(); // this file only contains a few names,
  // but if it had like millions of names than it would taken relatively longer to read this file
  fs.then(
    (value) {
      print("Names of members of Corridor Crew Youtube Channel: ");
      print(value);
    },
  ).catchError(
    (exc) {
      print(exc);
    },
  );
}

// displayNames function is too verbose, dart provides async and await keywords to make it easy and short
Future<String> displayNames2() async {
  try {
    File namesFile = File("D:/dart_practice/names.txt");
    final fs = await namesFile.readAsString();
    print("Names of members of Corridor Crew Youtube Channel: ");
    return fs;
  } on Exception catch (exc) {
    throw exc;
  }
}

Future<int> exampleFunction1(int number) async {
  final delay =
      await Future<int>.delayed(Duration(seconds: 3), () => number * 10);
  return delay;
}

Future<String> exampleFunction2(int number) async {
  final delay =
      await Future<int>.delayed(Duration(seconds: 3), () => number * 100);
  final resultStr =
      ("The second example function is executed and the result is ${delay}");
  return resultStr;
}

exampleFunction3() {
  Future<int> value = timeConsumingTask();
  value
      .then(
          (another) => exampleFunction2(another).then((value) => print(value)))
      // .then((res) => exampleFunction1(res).then((value) => print(value)))
      .catchError((e) => print(e.message));
  print("Both first and second functions are successfully executed!");
}

// Future.wait<T>
firstFunctionCalled() {
  Future<int> one = exampleFunction1(10);
  Future<int> two = exampleFunction1(100);
  Future<int> three = exampleFunction1(1000);

  Future.wait<int>([
    one,
    two,
    three,
  ]).then((value) => print("All three functions were successfully called!"));
}
