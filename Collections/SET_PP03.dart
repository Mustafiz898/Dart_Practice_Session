/*Tasks:
- Convert to a set.
- Add "butter".
- Add "milk" again — does the set change?
- Remove "juice".
- Count how many items you must buy.*/

void main(){
  List<String> items = ["milk", "bread", "eggs", "milk", "juice", "eggs"];

  Set<String> uniqueItems = items.toSet();
  print(uniqueItems);

  uniqueItems.add('butter');
  uniqueItems.add('milk');
  print(uniqueItems);
  uniqueItems.remove('juice');

  int count = 0;
  for(String item in uniqueItems){
    count++;
  }

  print("Total items that need to buy: $count");

}