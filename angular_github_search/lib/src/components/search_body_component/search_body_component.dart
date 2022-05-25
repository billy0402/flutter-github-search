import 'package:angular/angular.dart';

import 'package:common_github_search/common_github_search.dart';

import '../search_results_component/search_results_component.dart';

@Component(
  selector: 'search-body',
  templateUrl: 'search_body_component.html',
  directives: [
    coreDirectives,
    SearchResultsComponent,
  ],
)
class SearchBodyComponent {
  @Input()
  GithubSearchState state;

  bool get isEmpty => state is SearchStateEmpty;
  bool get isLoading => state is SearchStateLoading;
  bool get isSuccess => state is SearchStateSuccess;
  bool get isError => state is SearchStateError;

  List<SearchResultItem> get items =>
      isSuccess ? (state as SearchStateSuccess).items : [];

  String get error => isError ? (state as SearchStateError).error : '';
}
