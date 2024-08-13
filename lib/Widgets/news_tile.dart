import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  //network
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              :  ifNullPhoto() /***/,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

class ifNullPhoto extends StatelessWidget {
  const ifNullPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height: 50,
     // width: double.infinity,
      // child: Text(
      //   "No Photo",
      //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      // ),
      child: Image.asset("assets/general.avif"),
    );
  }
}
