import 'dart:async';

import 'package:dwedding/NavigationBar/TabbedAppBar.dart';
import 'package:dwedding/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'helpers/database.dart';

class AppRoutes {
  static const nested = 'Nested';
  static const nestedChild = 'Nested Child';
  static const nestedChild1 = 'Nested Child 1';
  static const nestedChild2 = 'Nested Child 2';
  static const nestedChild3 = 'Nested Child 3';

  ///
  static const app = 'App';
  static const home = 'Home';
  static const settings = 'Settings';
  static const login = 'Login';

  List<QRoute> routes() => [
        QRoute(
          path: '/',
          builder: () => TabbedAppBarDemoFull(domain: 'kosong'),
        ),
        QRoute(
          path: '/:id',
          pageType: QFadePage(fullscreenDialog: true),
          builder: () => TabbedAppBarDemoFull(domain: '${QR.params['id']}'),
        ),
      ];
}
