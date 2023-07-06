
import 'package:flutter/material.dart';
import 'package:mobile_nft/features/Profiles/application/profile_provider.dart';
import 'package:mobile_nft/features/contracts/application/nft_provider.dart';
import 'package:mobile_nft/features/home/presentation/custom_search.dart';
import 'package:mobile_nft/utils/color.dart';
import 'package:mobile_nft/utils/constants.dart';
import 'package:mobile_nft/utils/fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final nft = context.watch<NftProvider>();
    final status = context.watch<ProfileProvider>();
    return Scaffold(
      backgroundColor: plainColor,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontFamily: titleFont),
        ),
        backgroundColor: brandColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          (currentIndex == 0)
          ? IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(nft.nfts));
            },
            icon: const Icon(Icons.search))
            : const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ActionChip(
                onPressed: () {},
                backgroundColor: themeColor,
                label: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Icon(Icons.wallet),
                    ),
                    
                  ]
                )
              )
            ) 
        ]
      )
    );
  }
}