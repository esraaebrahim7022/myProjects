import 'package:flutter/material.dart';
import 'package:project/models/widgets/list_view.dart';
import 'package:project/models/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: listView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 30),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          )),
    );
  }
}
