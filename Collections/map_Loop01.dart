void main(){

  Map<String, double> prices = {
    "Milk": 1.5,
    "Eggs": 2.0,
    "Bread": 1.2,
  };

  prices.forEach((key, value) {
    print("Item: $key\nQuantity: $value\n");
  });

  // Method 1
  for(MapEntry<String, double> price in prices.entries){
    print("${price.key}");
  }

  // Method 2
  for(var price in prices.entries){
    print("item: ${price.key}\nprice: ${price.value}");
  }
}