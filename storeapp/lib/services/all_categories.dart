import 'package:storeapp/helper/api.dart';

//مش محتاجه نعملها مودل عشان دي بسيطه
class AllCategoriesService {
  Future<List> getallcategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories', token: '');

    return data;
  }
}
