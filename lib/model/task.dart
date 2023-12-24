class Task {
  String text;
  String number;
  bool isCompleted;

  Task(this.text, this.isCompleted, this.number);

  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}
