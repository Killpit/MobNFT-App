import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:mobile_nft/utils/color.dart';
import 'package:mobile_nft/utils/fonts.dart';

class PublishArticle extends StatefulWidget {
  const PublishArticle({super.key});

  @override
  State<PublishArticle> createState() => _PublishArticleState();
}

class _PublishArticleState extends State<PublishArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brandColor,
        title: Text(
          "Creating...",
          style: TextStyle(fontFamily: titleFont),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  lorem(paragraphs: 1, words: 7).toUpperCase(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: themeColor),
                ),
              ),
            ]
          )
        )
      )
    );
  }
}