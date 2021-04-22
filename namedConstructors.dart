void main() {
  final mynote = Note(note1['Title']!, note1['Description']!);
  print(mynote.writeDetails());
  final mynote2 = Note.titleOnly(note1['Title']!);
  print(mynote2.writeDetails());
}

class Note {
  String title;
  String? description;  // nullable instance property

  Note(this.title, this.description); // default parametered constructor
  Note.titleOnly(this.title); // named constructor 

  writeDetails() {
    if (this.description != null) {
      return '''Title: $title\nDescription: $description''';
    }
    return '''Title: $title''';
  }
}

Map<String, String> note1 = { // literal map
  "Title":
      "Why Dart is the best programming language ever!? Dissecting Dart in its entirety!",
  "Description":
      "The way Dart programming lanuguage complies itself is the single best thing that makes it the best programming lanugage!",
};
