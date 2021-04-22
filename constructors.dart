main() {
  print(Post(
          title: 'This is the title of first post.',
          description: 'This is the body of first post...')
      .writeDetails());
  print(Todo(
          title: 'This is the title of first todo.',
          description: 'This is body of first todo...')
      .writeDetails());
  print(Person('Kristine', 24).doSomething());
  print(Person.occupation('Jennifer', 21, 'Ballet Dancer').doSomething());
  print(Test(200));
}

class Post {
  late String title;
  late String description;

  Post({required String title, required String description}) {
    this.title = title;
    this.description = description;
  }

  String writeDetails() {
    return 'Title: ${this.title}\nDescription: ${this.description}';
  }
}

class Todo {
  String title;
  String description;

  Todo({required this.title, required this.description}) {}

  String writeDetails() {
    return 'Title: ${this.title}\nDescription: ${this.description}';
  }
}

// initializer list: when using 'initializing formal consturctor' method encapsulated properties are at exposure, so use an initializer list

class Person {
  String name;
  String? profession;
  int _age;

  Person(String givenName, int givenAge)
      : this.name = givenName,
        this._age = givenAge;

  // named consturctor
  Person.occupation(this.name, int givenAge, this.profession)
      : this._age = givenAge; //initializer list

  doSomething() {
    if (profession is String) {
      return 'name: ${this.name}\nage: ${this._age}\nprofession: ${this.profession}';
    }
    return 'Name: ${this.name}\nAge: ${this._age}';
  }
}

class Fraction {
  int numerator;
  int denominator;

  Fraction(this.numerator, this.denominator);

  // redirecting consturctor
  Fraction.OneHalf() : this(1, 2);

  Fraction.Whole(int numerator) : this(numerator, 0);

  static Fraction fromString(String nums) {
    List<String> numbers = nums.split('/').toList();
    return Fraction(
        int.tryParse(numbers[0]) != null ? int.tryParse(numbers[0])! : 0,
        int.tryParse(numbers[1]) != null ? int.tryParse(numbers[1])! : 0);
  }

  CommonFraction() {
    List<int> commonFactors = [];
    for (int j = 2; j <= 10; j++) {
      if (numerator % j == 0 && denominator % j == 0) {
        for (int i = 1; numerator % j == 0; i++) {
          numerator = numerator ~/ j;
          denominator = denominator ~/ j;
        }
      }
    }
    commonFactors.add(numerator);
    commonFactors.add(denominator);
    return commonFactors;
  }

  String writeDetails() {
    return 'numerator: ${numerator}\nDenominator: ${denominator}\nCommon Fraction: ${CommonFraction()}';
  }
}

// ===========================Factory Constructors===========================================================================
// Factory constructor return an instance of the given class that's not necessarily a new one!
class Test {
  static var _objects = List<int>.generate(100, (int index) => index);

  factory Test(int n) {
    if (!_objects.contains(n)) {
      _objects.add(n);
    }

    return Test.writeDetails();
  }

  Test.writeDetails() {
    print(_objects);
    //   _objects.forEach((element) {
    //     print(element);
    //   });
  }
}

// ===============Private Constructors======================
// Private consturctors are mostly used along with factory consturctors
class Example {
  final int a;
  // private consturctor
  Example._(this.a) {
    print('Result: ' + this.a.toString());
  }

  factory Example(int val) {
    final c = val * 10;
    return Example._(c);
  }
}

// ===============const Constructors==============
class ExampleClass {
  final int first;
  final String second;
  final double third;
  // if all instance properties are final(immutable), apply const constructor to boost performance in flutter(allows caching on instances)
  const ExampleClass(this.first, this.second, this.third);
}
