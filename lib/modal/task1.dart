class Task {
  bool? isChecked;
  final String? name;

  Task( { required this.name , this.isChecked = false});

  void toggleCheckBox(){
      isChecked = !isChecked!;
  }
}