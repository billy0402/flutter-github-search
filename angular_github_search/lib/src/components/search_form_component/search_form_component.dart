import 'package:angular/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';

import 'package:common_github_search/common_github_search.dart';

import '../search_bar_component/search_bar_component.dart';
import '../search_body_component/search_body_component.dart';

@Component(
    selector: 'search-form',
    templateUrl: 'search_form_component.html',
    directives: [
      SearchBarComponent,
      SearchBodyComponent,
    ],
    pipes: [
      BlocPipe
    ])
class SearchFormComponent implements OnInit, OnDestroy {
  @Input()
  GithubRepository githubRepository;

  GithubSearchBloc githubSearchBloc;

  @override
  void ngOnInit() {
    githubSearchBloc = GithubSearchBloc(
      githubRepository: githubRepository,
    );
  }

  @override
  void ngOnDestroy() {
    githubSearchBloc.close();
  }
}
