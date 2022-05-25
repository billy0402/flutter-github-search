import 'package:common_github_search/common_github_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/search_form.dart';

void main() {
  final GithubRepository githubRepository = GithubRepository(
    GithubCache(),
    GithubClient(),
  );

  runApp(MyApp(githubRepository: githubRepository));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.githubRepository}) : super(key: key);

  final GithubRepository githubRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Search',
      home: Scaffold(
        appBar: AppBar(title: const Text('Github Search')),
        body: BlocProvider<GithubSearchBloc>(
          create: (_) => GithubSearchBloc(githubRepository: githubRepository),
          child: const SearchForm(),
        ),
      ),
    );
  }
}
