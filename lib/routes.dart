import 'package:flutter/material.dart';

import 'main.dart';
import 'todo.dart';

const homeRouteName = '/';
const randomRouteName = '/random_page';
const todoRouteName = '/todo';

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
    case todoRouteName:
      return MaterialPageRoute<void>(
        builder: (_) => const TodoPage(),
      );
    default:
      return MaterialPageRoute<void>(
        builder: (_) => const ErrorPage(),
      );
  }
}
