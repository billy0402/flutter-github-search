import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:common_github_search/common_github_search.dart'
    as common_github_search;

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key, required this.item});

  final common_github_search.SearchResultItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(item.owner.avatarUrl),
      ),
      title: Text(item.fullName),
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(item.htmlUrl))) {
          await launchUrl(Uri.parse(item.htmlUrl));
        }
      },
    );
  }
}
