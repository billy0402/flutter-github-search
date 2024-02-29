import 'package:ngdart/angular.dart';

import 'package:common_github_search/common_github_search.dart';

import 'package:angular_github_search/src/components/components.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [SearchFormComponent],
)
class AppComponent {
  final githubRepository = GithubRepository(
    GithubCache(),
    GithubClient(),
  );
}