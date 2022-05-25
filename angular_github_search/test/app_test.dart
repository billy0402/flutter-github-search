@TestOn('browser')
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';
import 'package:angular_github_search/app_component.dart';
import 'package:angular_github_search/app_component.template.dart' as ng;

// Testing info: https://angulardart.xyz/guide/testing

void main() {
  final testBed = NgTestBed<AppComponent>(ng.AppComponentNgFactory);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('heading', () {
    expect(fixture.text, contains('My First AngularDart App'));
  });
}
