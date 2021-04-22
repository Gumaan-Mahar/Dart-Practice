void main() {
  // print(0 / 10);
  try {
    Fraction f1 = Fraction(numerator: 10, denominator: 0);
    print(f1.Division());
  } on IntegerDivisionByZeroException catch (exc, traceback) {
    print(IntegerZeroDivisionException(
            message:
                'Ouch... An exception was casued due to integer division with zero!')
        .toString());
    print('Type of exception: ${exc}\nTraceback: ${traceback}');
  } catch (exc, traceback) {
    print('Something went wrong!');
    print('Type of exception: ${exc}\nTraceback: ${traceback}');
  } finally {
    print(
        'End of the program! This part gets displayed whether or not an error has occured.');
  }
}

class Fraction {
  final int _numerator;
  final int _denominator;

  Fraction({required int numerator, required int denominator})
      : _numerator = numerator,
        _denominator = denominator {
    if (_denominator == 0) {
      throw IntegerDivisionByZeroException;
    }
  }

  num Division() {
    return _numerator ~/ _denominator;
  }

  int get numerator => _numerator;
  int get denominator => _denominator;
}

//====================================Custom Exception Class===========================================
class IntegerZeroDivisionException implements Exception {
  String message;

  IntegerZeroDivisionException({required this.message});

  @override
  String toString() {
    return '${message}';
  }
}
