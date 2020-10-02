import 'package:emploi/widgets/Theming.dart';
import 'package:flutter/material.dart';
import 'pages/RootSreen.dart';

void main() {
  runApp(Emploi());
}

class Emploi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: 'Emploi',
      home: RootScreen(),
    );
  }
}
