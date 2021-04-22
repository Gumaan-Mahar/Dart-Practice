class Fruit {
  final String name;

  const Fruit(this.name);
}

abstract class Mammal {
  void eat(covariant Fruit f);
}

class Banana {
  final String name;
  const Banana(this.name);
}

class Monkey extends Mammal {
  @override
  void eat(Fruit f) => print('Banana');
}
