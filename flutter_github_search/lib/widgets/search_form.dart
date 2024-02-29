import 'package:flutter/material.dart';

import 'search_bar.dart' as search_bar;
import 'search_body.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        search_bar.SearchBar(),
        SearchBody(),
      ],
    );
  }
}
