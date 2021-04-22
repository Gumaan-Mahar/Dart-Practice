main() {
  late List<List<String>> pizza;
  void getToppingsFromPizza(pizza) {
    for (var topping in pizza) {
      print(topping);
    }
  }

  pizza = [
    ["olives", "Tomatoes", "Green Pepers"],
    ["Black Peppers", "Red Chillies"],
    ["Fried Potatoes", "Friend Onions"]
  ];
  getToppingsFromPizza(pizza);
  double myFavNum = 10;
  print(myFavNum);
}
