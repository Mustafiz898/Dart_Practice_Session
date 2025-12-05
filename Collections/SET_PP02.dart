void main(){

  List<String> visitors = [
    "alice", "bob", "charlie", "alice", "bob", "diana", "eric", "charlie"
  ];

  // converting the list into a set to remove duplicate
  Set<String> uniqueVisitors = visitors.toSet();
  print(uniqueVisitors);


  int count = 0;
  for(String visitor in uniqueVisitors){
    count++;
    if(visitor == 'diana') print("'diana' is present today");
  }

  print("The number of unique visior: $count");
  uniqueVisitors.add('frank');
  uniqueVisitors.remove('bob');
  print(uniqueVisitors);

}