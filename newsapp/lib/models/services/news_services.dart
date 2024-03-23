import 'package:dio/dio.dart';
import 'package:project/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2a08ba424ce84ca8a9de4191d4e3837a&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
