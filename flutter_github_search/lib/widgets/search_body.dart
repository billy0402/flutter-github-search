import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:common_github_search/common_github_search.dart';

import 'search_results.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubSearchBloc, GithubSearchState>(
      builder: (context, state) {
        return switch (state) {
          SearchStateEmpty() => const Text('Please enter a term to begin'),
          SearchStateLoading() => const CircularProgressIndicator(),
          SearchStateError() => Text(state.error),
          SearchStateSuccess() => state.items.isEmpty
              ? const Text('No Results')
              : Expanded(child: SearchResults(items: state.items)),
        };
      },
    );
  }
}
