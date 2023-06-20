import 'dart:math';

import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(children: [
        ElevatedButton(
          onPressed: () async =>
              await Navigator.of(context).pushNamed(randomRouteName),
          child: const Text('Open random page'),
        ),
        ElevatedButton(
            onPressed: () async =>
                await Navigator.of(context).pushNamed(todoRouteName),
            child: const Text('Open Todo List'))
      ])),
    );
  }
}

class RandomPage extends StatelessWidget {
  static final _random = Random();
  const RandomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () async =>
                  await Navigator.of(context).pushNamed(homeRouteName),
              child: Text('${_random.nextInt(10)}'))),
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Error!')),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: homeRouteName,
      onGenerateRoute: generateRoutes,
    );
  }
}
