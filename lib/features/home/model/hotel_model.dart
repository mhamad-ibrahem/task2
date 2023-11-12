class HotelModel {
  HotelModel({
    required this.name,
    required this.starts,
    required this.price,
    required this.currency,
    required this.image,
    required this.reviewScore,
    required this.review,
    required this.address,
  });
  final String name;
  final int starts;
  final int price;
  final String currency;
  final String image;
  final dynamic reviewScore;
  final String review;
  final String address;

  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
      name: json['name'],
      starts: json['starts'],
      price: json['price'],
      currency: json['currency'],
      image: json['image'],
      reviewScore: json['review_score'],
      review: json['review'],
      address: json['address'],
    );
  }
}
