/*
@Tags(const ['aot'])
@TestOn('browser')

import 'dart:async';

import 'package:ngdart2/angular2.dart';
import 'package:ngtest/angular_test.dart';
import 'package:pageloader/objects.dart';
import 'package:test/test.dart';

import '../example/app_component.dart';

NgTestFixture<AppComponent> fixture;
AppPO appPO;

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<AppComponent>();

  setUp(() async {
    fixture = await testBed.create();
    appPO = await fixture.resolvePageObject(AppPO);
  });

  tearDown(disposeAnyRunningTest);

  test('title', () async {
    expect(await appPO.title, 'My First AngularDart App');
  });

  // Testing info: https://webdev.dartlang.org/angular/guide/testing
}

class AppPO {
  @ByTagName('h1')
  PageLoaderElement _title;

  Future<String> get title => _title.visibleText;
}
*/
