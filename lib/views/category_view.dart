import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$category news',
          style: const TextStyle(
            color: Color.fromARGB(171, 0, 0, 0),
          ),
        ),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsTileListBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
