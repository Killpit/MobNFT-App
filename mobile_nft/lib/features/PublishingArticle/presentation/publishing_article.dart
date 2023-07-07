import 'package:flutter/material.dart';
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
      
    );
  }
}