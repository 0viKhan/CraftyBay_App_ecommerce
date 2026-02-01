class HomeCategory {
  final String id;
  final String title;
  final String icon;

  HomeCategory({
    required this.id,
    required this.title,
    required this.icon,
  });

  factory HomeCategory.fromJson(Map<String, dynamic> json) {
    return HomeCategory(
      id: json['_id'],
      title: json['title'],   // 👈 THIS is important
      icon: json['icon'],
    );
  }
}
