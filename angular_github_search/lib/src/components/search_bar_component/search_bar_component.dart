import 'package:ngdart/angular.dart';

import 'package:common_github_search/common_github_search.dart';

@Component(
  selector: 'search-bar',
  templateUrl: 'search_bar_component.html',
)
class SearchBarComponent {
  @Input()
  late GithubSearchBloc githubSearchBloc;

  void onTextChanged(String text) {
    githubSearchBloc.add(TextChanged(text: text));
  }
}
