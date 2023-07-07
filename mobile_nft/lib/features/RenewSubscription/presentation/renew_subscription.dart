import 'package:flutter/material.dart';
import 'package:mobile_nft/features/RenewSubscription/domain/renew_arguments.dart';
import 'package:mobile_nft/utils/color.dart';
import 'package:mobile_nft/utils/fonts.dart';
import 'package:mobile_nft/utils/func.dart';

class RenewSubscription extends StatefulWidget {
  const RenewSubscription({super.key});

  @override
  State<RenewSubscription> createState() => _RenewSubscriptionState();

  static const routeName = "/renew";
}

class _RenewSubscriptionState extends State<RenewSubscription> with Func {
  String setDuration = "";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as RenewArguments;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: brandColor,
                size: 30,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.rocket,
                      size: 100,
                      color: brandColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Renew for your subscribers to access your magazine NFTs daily",
                      style: TextStyle(
                        fontFamily: bodyFont,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                  ]
                )
              )
          ]
        )
      )
    );
  }
}