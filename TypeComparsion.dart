main() {
  final c1 = Example(4);
  final c2 = Example(4);
  print(
      'c1 and c2 are equal: ${c1 == c2}'); // returns false, however, it should return true! Perhaps, because
  //they are two different refrences
  final c3 = c1;
  print(
      'c3 and c1 are equal: ${c3 == c1}'); // returns true, cause they are two same refreneces!

  // IN ORDER TO HAVE THE DESIRED BEHAVIOUR, WE SHOULD OVERRIDE THE EQUALITY OPERTAOR OF THE PARTICULAR CLASS ACCORDINGLY, IN THIS CASE
  // WE WILL OVERRIDE THE EQUALITY OPERATOR OF EXAMPE CLASS

  // now that we have overriden the equality operator, the results returned are expected, Hurrray!
}

class Example {
  final int a;

  const Example(this.a);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Example) {
      final example = other;

      return runtimeType == example.runtimeType && a == other.a;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => a.hashCode;
}

// Other than equality operator and hashCode, if you wanted to do a complete logical comparsion, you should implement
// Comparable<T>

class Fraction implements Comparable<Fraction> {
  final int numerator;
  final int denominator;

  Fraction(this.numerator, this.denominator);

  double toDouble() {
    return numerator / denominator;
  }

  int compareTo(Fraction other) {
    if (toDouble() > other.toDouble()) return 1;
    if (toDouble() < other.toDouble()) return -1;
    return 0;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Fraction) {
      final fraction = other;

      return runtimeType == fraction.runtimeType && numerator == other.numerator && denominator == other.denominator;
    } else {
      return false;
    }
  }
}
