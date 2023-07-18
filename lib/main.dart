import 'package:flutter/material.dart';
import 'package:portfolioo/components/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Colors.blueGrey.shade200,
        useMaterial3: true,
        fontFamily: "custom",
      ),
      home: const Portfolio(),
    );
  }
}
