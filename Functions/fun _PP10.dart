void main(){
  processOrder(80, showFinalPrice);
}
void processOrder(double price, void Function(double) priceWithDiscount){
  double discount = .15;
  double discountPrice = price * (1 - discount);

  priceWithDiscount(discountPrice);
}

// callback function
void showFinalPrice(double finalDiscountPrice){
  print("The final discount price = $finalDiscountPrice");
}