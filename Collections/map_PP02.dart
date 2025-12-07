void main(){

  Map<String, double> prices = {
    "Milk": 1.5,
    "Eggs": 2.0,
    "Bread": 1.2,
  };
  /* Tasks:
  Add "Butter": 2.5.
  Increase the price of "Milk" by 0.2.
  Remove "Eggs".
  Check if "Bread" exists.
  Print all items with prices.
  Calculate the total value of all products.
  */

  // Adding Butter : 2.5
  prices['Butter'] = 2.5;

  // Increasing the price of milk by 0.2;
  prices.update('Milk', (value){
    return value + 0.2;
  });
  print(prices);

  // Removing eggs
  prices.remove('Eggs');
  // print("Is the 'Bread' exist? ${prices.containsKey('Bread')}");
  print("Is the 'Bread' exist? ${prices.keys.contains('Bread')}");
  print(prices);

  double totalValue = prices.values.fold(0, (prev, current) => prev + current);
  print("The total value of all products: $totalValue");
}