import 'package:flutter/material.dart';
import 'package:mobile_nft/features/CreateNFTs/application/create_nft_provider.dart';
import 'package:mobile_nft/features/Profiles/application/profile_provider.dart';
import 'package:mobile_nft/features/contracts/application/nft_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => NftProvider()),
      ChangeNotifierProvider(create: (_) => CreateProvider()),
      ChangeNotifierProvider(create: (_) => ProfileProvider()),
    ]
  ));
}