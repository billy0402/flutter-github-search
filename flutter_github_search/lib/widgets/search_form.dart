import 'package:flutter/material.dart';

import 'search_bar.dart';
import 'search_body.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SearchBar(),
        SearchBody(),
      ],
    );
  }
}
