import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_nft/features/CreateNFTs/application/create_nft_provider.dart';
import 'package:mobile_nft/utils/fonts.dart';
import 'package:mobile_nft/utils/func.dart';
import 'package:provider/provider.dart';

class CreateNFT extends StatefulWidget {
  const CreateNFT({super.key});
  
  @override
  State<CreateNFT> createState() => _CreateNFTState();
}

class _CreateNFTState extends State<CreateNFT> with Func{
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    late File imageFile;
    
    @override
    Widget build(BuildContext context) {
      final exec = context.watch<CreateProvider>();
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Title",
                  style: TextStyle(
                    fontFamily: bodyFont,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                ),
                
              )
            ]
          )
        )
      );
    }
  }
