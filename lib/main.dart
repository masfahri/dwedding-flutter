import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'routes.dart';

void main() {
  QR.settings.enableDebugLog = false;
  QR.setUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppRoutes().routes(), withWebBar: true));
}
