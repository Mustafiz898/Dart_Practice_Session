void main() {
  List<Map<String, dynamic>> cart = [
    {'name': 'laptop', 'price': 1200.0, 'quantity': 1},
    {'name': 'Mouse', 'price': 25.50, 'quantity': 2},
    {'name': 'Keyboard', 'price': 80.0, 'quantity': 1},
  ];

  // Task 1: Calculate total price of all items on this cart
  double total = cart.fold(0, (sum, item) => sum + (item['price'] * item['quantity']) );
  print("Total price: $total");

  // Task 2: Filter items that cost more than $50
  // var expensive = cart.where((item) => item['price'] > 50).toList();
  var expensive = [];
  for(var item in cart){
    if(item['price'] > 50) expensive.add(item['name']);
  }

  print("Expensive Items: ${expensive.join(",")}");

  // Task 3: Format item names--- making them Uppercase
  var upperItemName = cart.map((item){
    return "PRODUCT: ${item['name']} (Qty: ${item['quantity']})";
    }).toList();


  upperItemName.forEach((item) => print(item));

  cart.forEach((item){
    if(item['name'].toLowerCase() == 'laptop'){
      item['price'] = 1000;
    }
  });

  print(cart);
}

