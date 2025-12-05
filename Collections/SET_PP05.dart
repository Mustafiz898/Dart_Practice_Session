void main(){

  List<String> emails = [
    "a@gmail.com", "b@gmail.com", "c@gmail.com",
    "b@gmail.com", "d@gmail.com", "a@gmail.com"
  ];

  /*Tasks:
Ensure only unique emails are stored.
Count unique emails.
Add a new email.
Check if "x@gmail.com" exists.
Print all emails in sorted order.
*/

  // Ensuring only unique emails are stored
  Set<String> uniqueEmails = emails.toSet();
  print("Number of unique emails: ${uniqueEmails.length}");

  uniqueEmails.add("musta.ruetete@gmail.com");
  print("Is 'x@gmail.com' is present? ${uniqueEmails.contains('x@gmail.com')}");

  // printing all the emails in sorted order
  uniqueEmails
      .toList()
      .sort();

  uniqueEmails.forEach(print);


}