void main() {
  Map<String, Map<String, List<String>>> cityLibraries = {
    'Central_Library': {
      'Fiction': ['1984', 'The Great Gatsby'],
      'Science': ['A Brief History of Time', 'Cosmos'],
    },
    'West_Branch': {
      'Fiction': ['The Hobbit'],
      'History': ['Sapiens', 'The Silk Roads'],
    },
  };

  // task 1:
  // add a 'Cooking' category in West_Branch and add this list ['Salt Fat Acid Heat', 'The Food Lab']
  cityLibraries['West_Branch']?['Cooking'] =  ['Salt Fat Acid Heat', 'The Food Lab'];
  print(cityLibraries['West_Branch']);

  // task 2:
  /*At the Central_Library, replace the book 'Cosmos' in the 'Science' category
   by the updated version 'Cosmos: A Personal Voyage'*/

  cityLibraries['Central_Library']?.update('Science', (book){
    book[1] = 'Cosmos: A Personal Voyage' ;
    return book;
  });

  print(cityLibraries['Central_Library']);

  // task 3:
  // add a book named 'Brave New World' to the 'Fiction' category of Central_Library
  cityLibraries['Central_Library']!['Fiction']?.add("Brave New World");
  print(cityLibraries['Central_Library']);

  // Task 4:
  // Verify if 'West_Branch has a 'Science' category, if not then print West Branch needs a Science section
  var isContain = cityLibraries['West_Branch']?.containsKey('Science');
  if(isContain == false) print("West Branch needs a Science section");

  print(cityLibraries);


}