import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: articles.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: NewsTile(
            articleModel: articles[index],
          ),
        );
      },
    );
  }
}
