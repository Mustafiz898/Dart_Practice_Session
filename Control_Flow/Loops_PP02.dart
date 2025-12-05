void main(){

  List<int> scores = [85, 62, 91, 70, 78, 55];

  List<int> passedScore = scores.where((score) => score >= 70).toList(); // filtering and creating a new list of passed scores
  passedScore.sort(); // sorting passed score from lowest to highest
  print("Passing Scores: $passedScore");

}