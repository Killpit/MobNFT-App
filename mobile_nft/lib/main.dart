import 'package:flutter/material.dart';
import 'package:mobile_nft/features/CreateArticles/presentation/create_articles.dart';
import 'package:mobile_nft/features/CreateNFTs/application/create_nft_provider.dart';
import 'package:mobile_nft/features/PlaceOnSale/presentation/place_on_sale.dart';
import 'package:mobile_nft/features/Profiles/application/profile_provider.dart';
import 'package:mobile_nft/features/Profiles/presentation/profile.dart';
import 'package:mobile_nft/features/RenewSubscription/presentation/renew_subscription.dart';
import 'package:mobile_nft/features/Subscribe/presentation/subscribe.dart';
import 'package:mobile_nft/features/articles/presentation/articles.dart';
import 'package:mobile_nft/features/contracts/application/nft_provider.dart';
import 'package:mobile_nft/features/home/presentation/home.dart';
import 'package:mobile_nft/features/landing/presentation/landing.dart';
import 'package:mobile_nft/features/magazines/presentation/magazine.dart';
import 'package:provider/provider.dart';
import 'features/PublishingArticle/presentation/publishing_article.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => NftProvider()),
      ChangeNotifierProvider(create: (_) => CreateProvider()),
      ChangeNotifierProvider(create: (_) => ProfileProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Landing(),
        '/home': (context) => const Home(),
        Subscribe.routeName: (context) => const Subscribe(),
        Magazine.routeName: (context) => const Magazine(),
        '/article': (context) => const Article(),
        '/createArticle': (context) => const CreateArticles(),
        '/publishArticle': (context) => const PublishArticle(),
        PlaceOnSale.routeName: (context) => const PlaceOnSale(),
        RenewSubscription.routeName: (context) => const RenewSubscription(),
        '/profile': (context) => const Profile(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}