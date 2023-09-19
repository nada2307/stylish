class ProductModel {
  final String image;
  final String name;
  final String description;
  final num price;
  final num oldPrice;
  final num ratingNumber;
  final double rate;
  final String offer;
  final bool isOffer;

  ProductModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.rate,
    required this.offer,
    required this.isOffer,
    required this.ratingNumber,
  });
}
