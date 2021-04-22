main() {
  Programmer p1 = Programmer('Gumaan', 19);
  p1.walk();
  print(p1.stumble());
  p1.code();
  print(p1.writeDetails());
}

mixin Walking {
  void walk() {
    print('walking..');
  }

  String stumble() {
    return 'stumbling..';
  }
}

class Human {
  final String name;
  final int age;

  const Human(this.name, this.age);

  String writeDetails() {
    return 'name: ${this.name}\nage: ${this.age}';
  }
}

//constrain mixin so that it can only be applied on subtypes of Human
mixin Coding on Human{
  void code() {
    print('coidng');
  }
}

class Programmer extends Human with Walking, Coding {
  final String name;
  final int age;

  Programmer(this.name, this.age) : super(name, age);
}
