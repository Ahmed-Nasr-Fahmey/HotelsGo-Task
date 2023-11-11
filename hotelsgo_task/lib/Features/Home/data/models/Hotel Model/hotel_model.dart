class HotelModel {
  final String name;
  final int starts;
  final int price;
  final String image;
  final dynamic reviewScore;
  final String review;
  final String address;

  HotelModel({
    required this.name,
    required this.starts,
    required this.price,
    required this.image,
    required this.reviewScore,
    required this.review,
    required this.address,
  });

  factory HotelModel.fromJson(jsonData) {
    return HotelModel(
        name: jsonData['name'],
        starts: jsonData['starts'],
        price: jsonData['price'],
        image: jsonData['image'],
        reviewScore: jsonData['review_score'],
        review: jsonData['review'],
        address: jsonData['address']);
  }
}
