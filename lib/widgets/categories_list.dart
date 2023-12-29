import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> cardItems = const [
    CategoryModel(
      categoryName: 'Business',
      imagePath: 'assets/images/business.png',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imagePath: 'assets/images/entertainment.png',
    ),
    CategoryModel(
      categoryName: 'Health',
      imagePath: 'assets/images/health.png',
    ),
    CategoryModel(
      categoryName: 'Science',
      imagePath: 'assets/images/science.png',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imagePath: 'assets/images/sports.png',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imagePath: 'assets/images/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'General',
      imagePath: 'assets/images/general.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 33.0),
      child: SizedBox(
        height: 105,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardItems.length,
          separatorBuilder: (context, index) => const SizedBox(width: 18),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: cardItems[index],
            );
          },
        ),
      ),
    );
  }
}
