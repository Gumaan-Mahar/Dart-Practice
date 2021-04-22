void main() {
  final StringDisplay s1 = StringDisplay(
      contentToDisplay: 'This is the string content to be displayed!',
      mySecretCode: 'topSecret');
  print(s1.writeDetails());
  print(s1.mySecretCode);
  print(s1.mySecretCode = 'newSecretYo!');
  // final StringDisplay s2 =    //Cannot pass num as a parameter to String Display!
  //     StringDisplay(contentToDisplay: 4455862, mySecretCode: 448962);
  final NumberDisplay n1 =
      NumberDisplay(contentToDisplay: 4487932, mySecretCode: 963963);
  print(n1.writeDetails());
  print(n1.mySecretCode);
}

abstract class DisplayDetails<T> {
  final T contentToDisplay;
  T _secretCode;

  DisplayDetails({required T this.contentToDisplay, required mySecretCode})
      : _secretCode = mySecretCode;

  T writeDetails() {
    return contentToDisplay;
  }

  T get mySecretCode => _secretCode;

  set(T myNewSecretCode) {
    _secretCode = myNewSecretCode;
  }
}

class StringDisplay<T extends String> extends DisplayDetails<String> {
  T contentToDisplay;
  T mySecretCode;

  StringDisplay({required this.contentToDisplay, required this.mySecretCode})
      : super(contentToDisplay: contentToDisplay, mySecretCode: mySecretCode);
}

class NumberDisplay<T extends num> extends DisplayDetails<num> {
  T contentToDisplay;
  T mySecretCode;

  NumberDisplay({required this.contentToDisplay, required this.mySecretCode})
      : super(contentToDisplay: contentToDisplay, mySecretCode: mySecretCode);
}
