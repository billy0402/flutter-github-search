import 'package:angular/angular.dart';

import 'package:common_github_search/common_github_search.dart';

import '../search_result_item_component/search_result_item_component.dart';

@Component(
  selector: 'search-results',
  templateUrl: 'search_results_component.html',
  directives: [coreDirectives, SearchResultItemComponent],
)
class SearchResultsComponent {
  @Input()
  List<SearchResultItem> items;
}
