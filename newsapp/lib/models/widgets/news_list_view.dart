import 'package:flutter/material.dart';
import 'package:project/models/article_model.dart';
import 'package:project/models/widgets/news_tile.dart';

class NewslistView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewslistView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return newsTile(
          articleModel: articles[index],
        );
      },
    ));
  }
}
