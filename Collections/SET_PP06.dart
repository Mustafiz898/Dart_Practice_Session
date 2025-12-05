void main(){
  Set<String> registered = {"Alice", "Bob", "John"};
  Set<String> checkedIn = {"John", "Alice"};
  /*Tasks:
  Find who registered but didn’t check in.
  Find who checked in (intersection).
  Find all people involved (union).
  Add a last-minute registration "David"
  */

  // Registered but didn't checked in
  print(registered.difference(checkedIn));

  // Registered user who checked in
  print(registered.intersection(checkedIn));

  // People who are involved
  print(registered.union(checkedIn));

  // Last minute registration
  registered.add('David');
  print("People who are registered: $registered");

}