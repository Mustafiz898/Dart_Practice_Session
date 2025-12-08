// create a function named calculateBill, which takes price, quantity and discount(optional)
// return final bill amount

void main(){
  var laptop = calculateBill(500, 3, 0.10);
  print("Total bill for Laptop: $laptop");
  var iPhone = calculateBill(400, 3);
  print("Total bill for iPhone: $iPhone");
}

// Function to calculate final bill
double? calculateBill(double price, double quantity, [double? discount]){
  if(discount != null){
    return (price * quantity) * (1- discount);
  } else{
    return price * quantity;
  }
}