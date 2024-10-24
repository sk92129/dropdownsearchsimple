class DropdownItemModel {
  final String id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  DropdownItemModel({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  factory DropdownItemModel.fromJson(Map<String, dynamic> json) {
    return DropdownItemModel(
      id: json["id"],
      createdAt: DateTime.parse(json["createdAt"]),
      name: json["name"],
      avatar: json["avatar"],
    );
  }

  static List<DropdownItemModel> fromJsonList(List list) {
    return list.map((item) => DropdownItemModel.fromJson(item)).toList();
  }

  ///this method will prevent the override of toString
  String userAsString() {
    return '#$id $name';
  }

  ///this method will prevent the override of toString
  bool userFilterByCreationDate(String filter) {
    return createdAt.toString().contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(DropdownItemModel model) {
    return id == model.id;
  }

  @override
  String toString() => name;
}
