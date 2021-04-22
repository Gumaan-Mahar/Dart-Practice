// Generally, Factory constructors are used to return default implementations of a certain class.

import 'dart:math';

void main() {
  final q1 = Formula(a: 4, b: 7, c: 3);
  print(q1);
}

abstract class Formula {
  factory Formula({required int a, required int b, required int c}) {
    return QuadraticFormula(a: a, b: b, c: c);
  }
}

class QuadraticFormula extends Formula {
  factory QuadraticFormula({required int a, required int b, required int c}) {
    return calculate(a: a, b: b, c: c);
  }

  static calculate({required int a, required int b, required int c}) {
    final result = pow(a, 2) + 2 * pow(a, 2) * b + 4 * a * c;
    return result;
  }

  // static String writeDetails() {
  //   return 'Result: ${calculate()}';
  // }
}

class aPlusBWholeSquare extends Formula {
  factory aPlusBWholeSquare({required int a, required int b, int c = 0}) {
    return calculate(a: a, b: b, c: c);
  }

  static calculate({required int a, required int b, int c = 0}) {
    return a + b * (pow(a, 2) + 2 * a * b + pow(b, 2));
  }
}
