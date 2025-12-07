void main(){
  Map<String, String> users = {
    "admin": "admin123",
    "user1": "pass1",
    "user2": "pass2",
  };
   /*Tasks:

Add "guest": "guest123".
Change "user1"'s password to "newpass".
Check if username "admin" exists.
Verify if password entered "pass2" matches "user2".
Remove "guest".
Print total registered users.
*/

  users['guest'] = "guest123";
  users['user1'] = 'newpass';

  print("Is the username 'admin' exist? ${users.keys.contains('admin')}");

  // Verify if a password entered "pass2" matches "user2"
  print("Is the password 'pass2' matches? ${users['user2'] ==  'pass2'} ");
  users.remove('guest');
  // Finding the total registered users
  int totalRegistered = users.length ;
  print("Total Registered Users: $totalRegistered");
}