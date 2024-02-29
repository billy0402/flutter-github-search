import 'package:ngdart/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';

import 'package:common_github_search/common_github_search.dart';

import 'package:angular_github_search/src/components/components.dart';

@Component(
  selector: 'search-form',
  templateUrl: 'search_form_component.html',
  directives: [
    SearchBarComponent,
    SearchBodyComponent,
  ],
  pipes: [BlocPipe],
)
class SearchFormComponent implements OnInit, OnDestroy {
  @Input()
  late GithubRepository githubRepository;

  late GithubSearchBloc githubSearchBloc;

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
