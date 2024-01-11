import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/page_2.dart';

import 'bloc/app_bloc.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppState state,
  List<Page<dynamic>> pages,
) {
  SelectedPage selectedPage = state.selectedPage;
      switch (selectedPage) {
        case SelectedPage.home:
          return [
            const CupertinoPage(
              child: MyHomePage(title: 'Hello',),
            ),
          ];
        case SelectedPage.addCardToCollection:
          return [
            const MaterialPage(
              child: Page2(),
            ),
          ];
      }
}
