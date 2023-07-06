import 'package:flutter/material.dart';
import 'package:mobile_nft/features/Subscribe/domain/subscribe_arguments.dart';
import 'package:mobile_nft/features/Subscribe/presentation/subscribe.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<dynamic> searchTerms = [];
  CustomSearchDelegate(List<dynamic> s) {
    searchTerms = s;
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<dynamic> matchQuery = [];
    for (var mag in searchTerms) {
      if (mag[6].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(mag);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index][6];
        List<dynamic> nft = matchQuery[index];
        return ListTile(
          onTap: () {
            Navigator.pushNamed(
              context,
              Subscribe.routeName,              
              arguments: SubscribeArguments(nft),
            );
          },
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<dynamic> matchQuery = [];
    for (var mag in searchTerms) {
      if (mag[6].toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(mag);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index][6];
        List<dynamic> nft = matchQuery[index];
        return ListTile(
          onTap: () {
            Navigator.pushNamed(
              context,
              Subscribe.routeName,
              arguments: SubscribeArguments(nft),
            );
          },
          title: Text(result),
        );
      }
    );
  }
}