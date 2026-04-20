import 'package:flutter/material.dart';
import 'package:lab2/pages/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receptsök',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainView(),
    );
  }

  Widget _controlpanel(context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 193, 210, 218),
    );
  }

  Widget _recipeArea(context) {
   return Expanded(
    child: Container(color: const Color.fromARGB(255, 204, 216, 176)),);
  }
}
