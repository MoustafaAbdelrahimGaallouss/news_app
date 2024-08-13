import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/news_tile.dart';
import 'package:news_app/services/news_services.dart';

class NewsListViews extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListViews({
    super.key,
    required this.articles,
  });
  @override
  @override
  Widget build(BuildContext context) {
    NewsServices(Dio());
    return SliverList(
      delegate:
          SliverChildBuilderDelegate(childCount: articles.length, (context, i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: NewsTile(
            articleModel: articles[i],
          ),
        );
      }),
    );
  }
}
