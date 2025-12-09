// all practice should in funtion for this problem
import 'dart:io';

void main(){
  List<Map<String, dynamic>> userProfiles = [
    {'id': 101, 'username': 'alice_w', 'email': 'alice@email.com', 'city': 'London', 'status': 'Active'},
    {'id': 102, 'username': 'bob_s', 'email': 'bob@email.com', 'city': 'Paris', 'status': 'Active'},
    {'id': 103, 'username': 'charlie_t', 'email': 'charlie@email.com', 'city': 'London', 'status': 'Inactive'},
    {'id': 104, 'username': 'david_j', 'email': 'david@email.com', 'city': 'New York', 'status': 'Active'},
    {'id': 105, 'username': 'emily_k', 'email': 'emily@email.com', 'city': 'Tokyo', 'status': 'Active'},
    {'id': 106, 'username': 'frank_l', 'email': 'frank@email.com', 'city': 'Paris', 'status': 'Inactive'},
    {'id': 107, 'username': 'grace_m', 'email': 'grace@email.com', 'city': 'London', 'status': 'Active'},
    {'id': 108, 'username': 'henry_n', 'email': 'henry@email.com', 'city': 'New York', 'status': 'Active'},
    {'id': 109, 'username': 'isla_o', 'email': 'isla@email.com', 'city': 'Sydney', 'status': 'Active'},
    {'id': 110, 'username': 'jack_p', 'email': 'jack@email.com', 'city': 'Tokyo', 'status': 'Inactive'},
    // Bonus: A duplicate email to test your 'canRegister' function!
    {'id': 111, 'username': 'duplicate_test', 'email': 'alice@email.com', 'city': 'London', 'status': 'Active'},
  ];

  // Task 1: Check if a user can register (email must be unique)
  stdout.write("Enter user mail want to register: ");              // take input from the user
  String ? mail = stdin.readLineSync();

  bool isPossibleToRegister = canRegister(userProfiles, mail);
  if(isPossibleToRegister == true) print("Resister Possible");
  else print("Email Already Exists!");

  // Task 2: Get all active user from city "London"

  List<Map<String, dynamic>> activeUser =  getActiveUserCity(userProfiles) ;
  print("Active Users:");
  activeUser.forEach((user) => print("  Name:${user['username']} >> Email:${user['email']}") );

  // Task 3:  Count Active and  inactive users
  List<int> count = countActiveInactive(userProfiles);
  print("Total Active = ${count[0]}, Total Inactive = ${count[1]}");

  // Task 4: Find user with the longest username
  Map<String, dynamic> longestUser = longestUsername(userProfiles);
  // print("The longest user: ${longestUser}");
  longestUser.forEach((key, value) => stdout.write('$key : $value | '));
  print('');


}


//------------------------ Task 1 Function ----------------------------
bool canRegister(List users, String? mail){
  return !users.any((user) => user['email'] == mail);
}

//--------------------------Task 2 function-----------------------
List<Map<String, dynamic>> getActiveUserCity(List<Map<String, dynamic>> users) {

  List<Map<String, dynamic>> activeUser = users.where((user) => user['status'] == 'Active' && user['city'] == 'London').toList();
  return activeUser;
}
//--------------------------Task 3 Function _______________________________
List<int> countActiveInactive(List<Map<String, dynamic>> Users){
  int active = 0;
  int inactive = 0;

  for(var user in Users){
    if(user['status'] == "Active") active++;
    if(user['status'] == "Inactive") inactive++;
  }
  return [active, inactive];
}

//---------------------------- Task 4 Function -------------------------------
Map<String, dynamic> longestUsername(List<Map<String, dynamic>> users){
  int maxLength = 0;
  Map<String, dynamic> longUser ={};
  for(var user in users){
    if(user['username'].length > maxLength) {
      maxLength = user['username']!.length;
      longUser = user;
    }
  }
  return longUser;
}