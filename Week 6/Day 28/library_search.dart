List<String> searchBooks(
  List<String> titles, {
  String? category,
}) {
  // Using where() higher-order function
  List<String> filteredBooks = titles.where((book) {
    if (category == null || category.isEmpty) {
      return true;
    }

    return book.toLowerCase().contains(category.toLowerCase());
  }).toList();

  return filteredBooks;
}

void main() {
  List<String> books = [
    "Science of Space",
    "Flutter Development",
    "History of India",
    "Science Experiments",
    "Dart Programming",
    "Science Fiction Stories"
  ];

  print("All Science Books:");

  List<String> result = searchBooks(
    books,
    category: "Science",
  );

  result.forEach((book) => print(book));

  print("\nBooks Found: ${result.length}");
}