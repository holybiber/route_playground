import 'package:flutter/material.dart';

import 'main.dart';

const homeRouteName = '/';
const randomRouteName = '/random_page';

Route<Object?> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case homeRouteName:
      return MaterialPageRoute<void>(
        builder: (_) => const HomePage(),
      );
    case randomRouteName:
      return MaterialPageRoute<void>(
        builder: (_) => const RandomPage(),
      );
    default:
      return MaterialPageRoute<void>(
        builder: (_) => const ErrorPage(),
      );
  }
}
