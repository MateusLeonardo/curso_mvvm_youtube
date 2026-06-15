import 'package:curso_mvvm_youtube/config/dependencies.dart';
import 'package:curso_mvvm_youtube/routing/router.dart';
import 'package:flutter/material.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
