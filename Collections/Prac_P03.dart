void main(){

  List<int> quantities = [15, 3, 22, 0, 8, 31];

  int countOutStock = 0;
  int highestStock = 0;
  int totalSum = 0;

  //print each quantity with index
  for(int i=0; i<quantities.length; i++){
    print("Item ${i+1}: ${quantities[i]}");
    if(quantities[i] == 0){
      countOutStock++;
        quantities[i] = 5;
    }
    if(quantities[i] > highestStock) highestStock = quantities[i];
    totalSum += quantities[i];
  }

  print("Items Out of Stock: $countOutStock");
  print("Item with the Highest Stock: $highestStock");
  print("Average Stock Level: ${totalSum / quantities.length}");
  print("Updated list : $quantities");



}