// ignore: file_names
// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/categories_List_View.dart';
// import 'package:news_app/Widgets/News_List_View.dart';
import 'package:news_app/Widgets/news_list_view_builder.dart';
// import 'package:news_app/services/news_services.dart';
//  import 'package:news_app/Widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
           SliverToBoxAdapter(child: CategoriesListView(),),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}
