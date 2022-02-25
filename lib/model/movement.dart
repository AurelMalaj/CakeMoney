class Movement {
  double value;
  String category;
  String? note;

  Movement({required this.value, required this.category});

  void setNote(String note) {
    this.note = note;
  }
}



/*
class PicQuote {
  String quote;
  String imageUrl;
  
  
  String? _id;
  bool? isFavorite;

  String? get id => _id;

  PicQuote({
    required this.quote,
    required this.imageUrl,
    this.isFavorite = false,
  });

  PicQuote.withId({required this.quote, required this.imageUrl}) {
    isFavorite = false;
  }
}*/
