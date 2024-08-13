import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
// import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/News_List_View.dart';
import 'package:news_app/services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget {

  final String category;
  const NewsListViewBuilder({
    super.key, required this.category,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticleModel> articles = [];
var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  future= NewsServices(Dio()).getTopHeadlins(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViews(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                child: Center(
                    child: Text(
              "opps there was an error , try later",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )));
          } else {
            return const SliverFillRemaining(
                child: Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ));
          }
        });

    // return IsLoading
    //     ? const SliverFillRemaining(
    //         child: Center(
    //         child: CircularProgressIndicator(
    //           color: Colors.blue,
    //         ),
    //       ))
    //     :articles.isNotEmpty ?NewsListViews(
    //         articles: articles,
    //       ) :const SliverFillRemaining(child: Center(child: Text(
    //         "opps there was an error , try later",style: TextStyle(
    //           fontWeight: FontWeight.bold,fontSize: 20
    //         ),
    //       ),));
  }
}
