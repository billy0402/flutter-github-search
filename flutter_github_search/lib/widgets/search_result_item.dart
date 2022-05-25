import 'package:common_github_search/common_github_search.dart'
    as common_github_search;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key, required this.item}) : super(key: key);

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
