class Post {

  late String id;
  late String title;
  late String description;

  Post();

  Map<String, dynamic> tpMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }
}