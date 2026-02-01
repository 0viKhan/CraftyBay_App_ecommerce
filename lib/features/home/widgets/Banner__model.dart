class HomeBanner {
  final String image;

  HomeBanner({required this.image});

  factory HomeBanner.fromJson(Map<String, dynamic> json) {
    return HomeBanner(
      image: json['photo_url'], // ✅ correct key
    );
  }
}
