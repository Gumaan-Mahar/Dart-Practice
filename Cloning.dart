main() {
  print(Person(name: 'Kristine', age: 27, skills: [
    Skills(['Model', 'Actress', 'Musician']),
    Skills(['kind', 'beautiful', 'humorous'])
  ]).writeDetails());
  Person me = Person(name: 'Gumaan', age: 19, skills: [
    Skills(['Genius', 'Billionaire', 'Philanthropist', 'Playbot'])
  ]);
  Person anotherMe = me.copyWith(name: 'Zakiro', age: 1000);
  print(anotherMe.writeDetails());
  print(me.writeDetails());
}

class Skills {
  final List skills;

  const Skills(this.skills);
  call({skills}) {
    return skills.forEach((e) => e);
  }

  Skills copyWith({List<Skills>? skills}) => Skills(skills ?? this.skills);

  List<String> writeDetails() {
    List<String> itemsToDisplay = [];
    skills.forEach((element) {
      itemsToDisplay.add(element);
    });
    return itemsToDisplay;
  }
}

class Person {
  final String name;
  final int age;
  final List<Skills> skills;

  const Person({required this.name, required this.age, required this.skills});

  Person copyWith({String? name, int? age, List<Skills>? skills}) => Person(
      name: name ?? this.name,
      age: age ?? this.age,
      skills: skills ?? this.skills.map((e) => e.copyWith()).toList());

  String writeDetails() {
    return 'name: ${name}\nage: ${age}\nskills: ${skills}';
  }
}
