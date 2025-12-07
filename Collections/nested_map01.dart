void main(){
  Map<String,Map<String, dynamic>> users = {
    'user1': {
      'name' : 'Mustafiz',
      'Id': 1804042,
      'mail': 'fizz@gmail.com'
    },
    'user2':{
      'name':'Jasmin',
      'Id':147223,
      'mail':'jasmin@gmail.com'
    }
  };

  // access an item
  print(users['user1']!['name']);
  print(users['user2']);

  // Update an item
  // Method 1
  users.update('user1', (old){
    old['mail'] = 'musta.ruetete@gmail.com';
    return old;
  });

  print(users['user1']);

  // Method 2
  users['user2']?.update('mail', (value) => 'jasminarajoy@gmail.com');
  print(users['user2']);

  // adding new key : value pair in the map
  users['user1']!['Age'] = 25;
  users['user2']!['Age'] = 25;
  print(users);

  // remove any item
  users['user1']?.remove('Id');
  print(users['user1']);

  // check any key or any value is present
  print("Is the id '147223' present in user2? ${users['user2']?.containsValue(147223)}");
  print("Is the key 'Id' present in user 1? ${users['user1']?.containsKey('Id')}");




}