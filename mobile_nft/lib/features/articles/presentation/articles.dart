import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:mobile_nft/utils/color.dart';
import 'package:mobile_nft/utils/fonts.dart';
import 'package:turn_page_transition/turn_page_transition.dart';

class Article extends StatefulWidget {
  const Article({super.key});
  @override
  State<Article> createState() => _ArticleState(); 
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: plainColor,
      appBar: AppBar(
        backgroundColor: plainColor,
        iconTheme: const IconThemeData(color: brandColor),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0, bottom: 100, left: 20, right: 20),
          child: Column(children: [
            Text(
              "COLOR MOOD",
              style: TextStyle(
                color: brandColor, fontFamily: titleFont, fontSize: 18,),
            ),
            
          ])
        )
      )
    );
  }

}
