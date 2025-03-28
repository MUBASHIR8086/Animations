import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_animations/controller/provider.dart';
import 'package:text_animations/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Textprovider(),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  }
}
