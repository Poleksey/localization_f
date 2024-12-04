class ProductModel {
  final String id;
  final String title;
  final String price;
  final String currency;
  final String imageUrl;
  final String description;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.imageUrl,
    required this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        currency: json['currency'],
        imageUrl: json['imageUrl'],
        description: json['description']);
  }
}
