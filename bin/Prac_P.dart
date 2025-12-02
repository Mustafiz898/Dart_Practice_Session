void main(){
  List<String> quizResults = [
    'Alice:92',
    'Bob:55',
    'Charlie:78',
    'David:61',
    'Eve:85',
    'Frank:49'
  ];

  // Define the minimum score for passing
  const int passingScore = 70;

  // Creating the integer list of scores
  var scores = quizResults.map((result) => int.parse(result.split(":")[1]));

  // creating and filtering the  list of passed Scores
  List<int> passedResults = scores.where((result) => result >= passingScore).toList();


  // finding the total score sum
  int totalScoreSum = 0;
  int maxScore = 0;
  for(int score in scores){
    totalScoreSum += score;
    if (maxScore < score) maxScore = score;
  }


  // output
  print("Total number of students: ${quizResults.length}");
  print("Average score: ${totalScoreSum / quizResults.length}");
  print("Highest score: $maxScore");
  print("Passed results: $passedResults");
  print("Number of passed student: ${passedResults.length}");
}