main() {
  myFunction();
}

myFunction() {
  List<int> myList = [4, 9, 3, 2];

  for (var i = 0; i < myList.length; i++) {
    print('*' * myList[i]);
  }
}
