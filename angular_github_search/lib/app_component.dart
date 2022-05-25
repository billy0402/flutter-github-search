import 'package:angular/angular.dart';
import 'package:common_github_search/common_github_search.dart';

import 'src/components/search_form_component/search_form_component.dart';

// AngularDart info: https://angulardart.xyz
// Components info: https://angulardart.xyz/components
//
// (If the links still point to the old Dart-lang repo, go here:
// https://pub.dev/ngcomponents)

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [SearchFormComponent],
)
class AppComponent {
  final GithubRepository githubRepository = GithubRepository(
    GithubCache(),
    GithubClient(),
  );
}
