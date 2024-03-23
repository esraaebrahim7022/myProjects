class ProductsModel {
  final dynamic id;
  final String title;
  final String image;
  final double price;
  final String description;
  final RatingModel rating;

  ProductsModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.description,
      required this.rating});

  factory ProductsModel.fromjson(jsondata) {
    return ProductsModel(
        id: jsondata['id'],
        title: jsondata,
        image: jsondata,
        price: jsondata,
        description: jsondata,
        rating: RatingModel.fromjson(jsondata['rating']));
  }

  get category => null;
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsondata) {
    return RatingModel(rate: jsondata, count: jsondata);
  }
}
