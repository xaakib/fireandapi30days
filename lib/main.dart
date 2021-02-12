import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'foodtest_model_Fibs/notifier/auth_notifier.dart';
import 'foodtest_model_Fibs/notifier/food_notifier.dart';
import 'foodtest_model_Fibs/screens/feed.dart';
import 'foodtest_model_Fibs/screens/login.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => FoodNotifier(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.lightBlue,
      ),
      home: Consumer<AuthNotifier>(
        builder: (context, notifier, child) {
          return notifier.user != null ? Feed() : Login();
        },
      ),
    );
  }
}
