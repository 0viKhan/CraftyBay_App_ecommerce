class ProductModel {
  final String id;
  final String title;
  final List<String> photos;
  final int currentPrice;
  final double rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.photos,
    required this.currentPrice,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData['id'].toString(),
      title: jsonData['title'] ?? '',
      photos: List<String>.from(jsonData['photos'] ?? []),
      currentPrice: jsonData['currentPrice'] ?? 0,
      rating: (jsonData['rating'] ?? 0).toDouble(),
    );
  }
}
