import 'package:flutter/material.dart';
import 'package:mobile_nft/utils/color.dart';
import 'package:mobile_nft/utils/fonts.dart';

class CreateArticles extends StatefulWidget {
  const CreateArticles({super.key});
  
  @override
  State<CreateArticles> createState() => _CreateArticlesState();
}

class _CreateArticlesState extends State<CreateArticles> {
  final TextEditingController promptController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: brandColor,
        title: Text(
          "Create an Article",
          style: TextStyle(fontFamily: titleFont),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: promptController,
              minLines: 6,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Enter a prompt to generate your article",
                hintStyle: TextStyle(fontFamily: bodyFont)),
            ),
            
          ]
        )
      )
    );
  }
}