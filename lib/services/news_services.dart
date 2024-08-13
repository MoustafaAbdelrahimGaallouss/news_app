// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getTopHeadlins({required  category}) async {
    try {
  var respose = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=314520f3a4f0402488a7f0d891c95987&category=${category}');
  
  var jsonData = respose.data;
  
  List<dynamic> articles = jsonData["articles"];
  
  List<ArticleModel> articleLise = [];
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
        // soure: Source(
        //     id: article["source"]["id"], name: article["source"]["name"]),
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description']);
    articleLise.add(articleModel);
  }
  return (articleLise);
} catch (e) {
  // TODO
  return [];
}
  }
}
