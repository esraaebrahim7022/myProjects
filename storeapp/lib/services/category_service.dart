import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class CategoyService {
  Future<List<ProductsModel>> getAllCategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName', token: '');

    List<ProductsModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductsModel.fromjson(data[i]),
      );
    }

    return productsList;
  }
}
