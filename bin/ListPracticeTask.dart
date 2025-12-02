void main(){
  List<String> shoppingList = [];

  shoppingList.addAll(['Milk', 'Egg', 'Bread']);
  print(shoppingList);
  shoppingList.insert(1, 'Butter');
  print(shoppingList);

  shoppingList[3] = "Whole Wheat Bread";
  print(shoppingList);

  shoppingList.remove('Egg');
  print("Total no. of items: ${shoppingList.length}");
  print(shoppingList);

}