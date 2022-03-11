class Movement {
  double value;
  String? category;
  String? note;

  Movement({required this.value, required this.category, this.note});

  void setNote(String note) {
    this.note = note;
  }
}
