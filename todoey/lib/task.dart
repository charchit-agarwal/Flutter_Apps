class Task {
  String taskTitle;
  bool isChecked;
  Task({required this.taskTitle, this.isChecked = false});
  void toggleIsChecked() {
    isChecked = !isChecked;
  }
}
