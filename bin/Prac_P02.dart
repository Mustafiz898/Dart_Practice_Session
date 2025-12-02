void main(){
  List<String> tasks = ["Buy groceries", "Clean the room", "Learn Dart", "Do exercise", "Call a friend"];

  // printing the entire tasks list
  for(int task = 0; task < tasks.length; task++){
    print("${task + 1}. ${tasks[task]}");
  }

 // finding the task that contains character more than 10
  int count = 0;
  String shortest = tasks[0] ;
  for(String task in tasks){
    if(task.length > 10) count++;
    if(shortest.length > task.length) shortest = task;
  }

  print("Task longer than 10 characters: $count");
  print("Shortest task: $shortest");

  tasks.removeWhere((task) => task.contains("Clean"));

  print("Updated tasks: $tasks");
}