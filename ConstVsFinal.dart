// const keyword is used for identifiers whose value is computed in compile time, and final otherwise(run-time)
// The values of strings, numbers, classes with constant constructors are computed in compile time

import 'dart:io';

const a = 23;
const myString = 'Kristine';
const addition = a + 100;

// final is used for identifiers whose values are computed in run-time
final contents = File('launch.json').readAsString();

// Instance variables of classes are always final, whilel static properties can be const
class Example {
  final a = 23;
  final myString = 'Kristine';

  //variables and method marked as static are available on the class itself only, not on it's instances
  static const ExampleList = [1, 2, 3, 4, 5, 6];
  static const name = 'Kristine';
  static const PI = 3.14;
}
