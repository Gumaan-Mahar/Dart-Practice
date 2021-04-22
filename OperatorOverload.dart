main() {
  final fract1 = Fraction(3, 8);
  final fract2 = Fraction(4, 6);
  final sum = fract1 + fract2;
  print(sum);
}

class Fraction {
  int _numerator;
  int _denominator;

  Fraction(this._numerator, this._denominator);

  int get numerator => _numerator;
  set denominator(int val) {
    if (val == 0) {
      throw ('Denomiator can not possibly be zero! Try changing it.');
    } else {
      _denominator = val;
    }
  }
  Fraction operator +(Fraction other) => Fraction(
      _numerator * other._denominator + _denominator * other._numerator,
      _denominator * other._denominator);

  // Fraction operator*(Fraction other) => ...
}

