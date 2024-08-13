// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
// import 'package:news_app/Widgets/news_tile.dart';
// import 'package:news_app/services/news_services.dart';


// bool IsLoading =true;

// class NewsListViews extends StatefulWidget {
//   const NewsListViews({
//     super.key,
//   });

//   @override
//   State<NewsListViews> createState() => _NewsListViewsState();
// }

// class _NewsListViewsState extends State<NewsListViews> {
//   List<ArticleModel> articles = [];
//   @override


//   void initState() {
//     super.initState();

//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     IsLoading=false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     NewsServices(Dio());
//     return articles.isEmpty ?  const SliverFillRemaining(child: Center(
//       child: CircularProgressIndicator(
//         color: Colors.blue,
//       ),
//     )):   SliverList(
//       delegate:SliverChildBuilderDelegate(
//         childCount: articles.length, 
//         (context, i) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 16.0),
//           child: NewsTile(
//             articleModel: articles[i],
//           ),
//         );
//       }),
//     );
//         }
//   }

