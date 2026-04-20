import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlpanel(context), Expanded(child: _recipeArea(context))]),
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
