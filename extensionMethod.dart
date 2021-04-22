import 'constructors.dart';

extension FractionExt on String {
  bool isFraction() {
    if (this.contains('/')) {
      return true;
    }
    return false;
  }

  Fraction toFraction() {
    return Fraction.fromString(this);
  }

  
}
