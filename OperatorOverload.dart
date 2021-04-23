main() {
  final fract1 = Fraction(numerator: 3, denominator: 8);
  final fract2 = Fraction(numerator: 4, denominator: 6);
  final sum = fract1 + fract2;
  print(sum.writeDetails());
  final fract3 = Fraction(numerator: 2, denominator: 9);
  final fract4 = Fraction(numerator: 3, denominator: 7);
  final product = fract3 * fract4;
  print(product.writeDetails());
  final fract5 = Fraction(numerator: 3, denominator: 7);
  final fract6 = Fraction(numerator: 2, denominator: 7);
  final subtraction = fract5 - fract6;
  print(subtraction.writeDetails());
}

// Operator overloading gives you the ability to add custom implementations to a certain set of operators in your classes.
// Dart allows us to overload it's default behaviors when using certain operators in classes, such as:
// Arithmetic operators like + - * etc.
// Equality operators like == and !=
// Relational operators, > >= < and <=
// and many more
class Fraction {
  int _numerator;
  int _denominator;

  Fraction({required int numerator, required int denominator})
      : _numerator = numerator,
        _denominator = denominator;

  int get numerator => _numerator;
  int get denominator => _denominator;

  set denominator(int val) {
    if (val == 0) {
      throw ('Denomiator can not possibly be zero! Try changing it.');
    } else {
      _denominator = val;
    }
  }

  writeDetails() {
    return 'Numerator: ${_numerator}\nDenominator: ${_denominator}';
  }

  Fraction operator +(Fraction other) => Fraction(
      numerator:
          _numerator * other._denominator + _denominator * other._numerator,
      denominator: _denominator * other._denominator);

  Fraction operator *(Fraction other) => Fraction(
      numerator: _numerator * other.numerator,
      denominator: _denominator * other.denominator);

  Fraction operator -(Fraction other) => Fraction(
      numerator:
          (_numerator * other.denominator) - (_denominator * other.numerator),
      denominator: (_denominator * other.denominator));
}
