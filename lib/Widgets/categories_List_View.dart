import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Category_Card.dart';
import 'package:news_app/Models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> Categories = const [
    CategoryModel(categoryName: "Sports", imageSourceUrl: "assets/sports.avif"),
    CategoryModel(
        categoryName: "Business", imageSourceUrl: "assets/business.avif"),
    CategoryModel(
        categoryName: "Entertainment",
        imageSourceUrl: "assets/entertaiment.avif"),
    CategoryModel(
        categoryName: "Science", imageSourceUrl: "assets/science.avif"),
    CategoryModel(categoryName: "Health", imageSourceUrl: "assets/health.avif"),
    CategoryModel(
        categoryName: "Technology", imageSourceUrl: "assets/technology.jpeg"),
    CategoryModel(
        categoryName: "General", imageSourceUrl: "assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CategoryCard(
                category: Categories[i],
              ),
            );
          }),
    );
  }
}
