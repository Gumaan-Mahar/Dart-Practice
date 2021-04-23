void main() {
  // 1. List.generate
  final list = List.generate(10, (index) => (index + 1) * 100);
  final list2 = List.generate(10, (index) => index);
  print(list);
  // 2. Look how handy these methods are!
  final List<String> listOfOdds = list2
      .where((element) => element % 2 != 0)
      .map((e) => e.toString())
      .toList();
  print(listOfOdds);

  // 3. where = goes through the entire list, and discards all the elemenmts that evaluate the given condition to false.
  final listOfFiveHundreds = list.where((element) => element <= 500);
  print(listOfFiveHundreds);

  // 4. map = transforms the element from a element to another
  final setToList =
      Set.of(List.generate(100, (index) => index)).map((e) => e).toList();
  print(setToList);

  // 5. skip = SKips the number of elements passed as parameter
  // ignore: unused_local_variable
  final skipSomeNums = setToList.skip(10);

  // 6. followedBy = concatenates this container with the other one passed as parameter
  final twoContainersConcatenated = skipSomeNums.followedBy(setToList);
  print(twoContainersConcatenated);

  // Set.of()
  final setOfIntegers = Set.of(list2);
  print(setOfIntegers);

  // 7. toList/toSet/toMap()
  print([7, 5, 8, 6, 3, 2, 1, 4].asMap());
  print(List.generate(10, (index) => index).toSet());

  // 8. every() = Checks if every element of the given container satisfy the given condition
  print(setOfIntegers.every((element) => element > 5));

  // 9. contains() = Checks if the given element is present in the container
  print(setOfIntegers.contains(10));
  print([
    1,
    2,
    3,
  ].contains(3));
  print(setOfIntegers.containsAll(list2));

  // 10. reduce = Reduces a collection to a single value, according to the condition passed as parameter
  print([1, 2, 3, 4, 5].reduce((value, element) => value * element));

  // 11. fold = Functions pretty much same as reduce(), except it asks for an initial value and the returned type doesn't
  // have to be the same as of the collection.
  final listOfStringNums = ['One', 'Two', 'Three', 'Four', 'Five'];
  final listOfStringNumsLength = listOfStringNums.fold(
      0, (int prev, String element) => prev + element.length);
  print(listOfStringNumsLength);

  // 12. List.filled() = Creates a list of the given length with [fill] at each position ;)
  print(List.filled(10, 10));

  // 13. Map.fromIterables
  Map.fromIterables([1, 2, 3, 4, 5], listOfStringNums);

  // 13. unmodifiable = Create an unmodifiable list! This method is also available for Set and Map.
  List.unmodifiable(List.generate(10, (index) => index));
}
