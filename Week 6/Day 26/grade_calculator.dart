void main() {
  // List of scores
  List<int> scores = [85, 90, 78, 92];

  // Handle empty list
  if (scores.isEmpty) {
    print("No scores available");
    return;
  }

  int sum = 0;

  // Loop to calculate total
  for (int score in scores) {
    sum += score;
  }

  double average = sum / scores.length;

  String grade;

  // Using switch (Dart style)
  switch (average ~/ 10) {
    case 10:
    case 9:
      grade = "A";
      break;
    case 8:
    case 7:
      grade = "B";
      break;
    case 6:
    case 5:
      grade = "C";
      break;
    default:
      grade = "F";
  }

  // Output
  print("Scores: $scores");
  print("Average: ${average.toStringAsFixed(2)}");
  print("Grade: $grade");
}