void main() {
  final person1 = Person();
  print(person1('Maven', 500));
}

class Person {
  String call(String name, int age) {
    return 'name: ${name}\nage: ${age}';
  }
}


