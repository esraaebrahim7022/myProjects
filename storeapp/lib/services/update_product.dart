import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateServiceProduct {
  Future<ProductsModel> updateproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id,
      required String category}) async {
    print('product id = $id');
    Map<String, dynamic> data = await Api().put(
        url: 'https://fakestoreapi.com/products',
        body: {
          'title': title,
          'price': price,
          'description': description,
          'image': image,
          'category': category,
        },
        token: '');

    return ProductsModel.fromjson(data);
  }
}
