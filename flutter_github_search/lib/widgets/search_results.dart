import 'package:common_github_search/common_github_search.dart'
    as common_github_search;
import 'package:flutter/material.dart';

import 'search_result_item.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key, required this.items}) : super(key: key);

  final List<common_github_search.SearchResultItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return SearchResultItem(item: items[index]);
      },
    );
  }
}
