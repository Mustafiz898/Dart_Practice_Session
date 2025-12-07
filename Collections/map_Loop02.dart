void main(){
  Map<String, Map<String, List<String>>> company = {
    'Tech': {
      'Mobile': ['Mustafiz', 'Jasmin'],
      'Backend': ['Alice'],
    },
    'HR': {
      'Recruitment': ['Bob', 'Charlie'],
    }
  };

  for(var dept in company.entries){
    print("Dept: ${dept.key}");
    for(var team in dept.value.entries ){
      print("  Team: ${team.key} -> ${team.value.join(',')}");
    }
  }

}