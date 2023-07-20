import 'package:flutter/material.dart';
import 'package:portfolioo/components/about.dart';
import 'package:portfolioo/components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Experience')),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Skills')),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'My Logo',
          ),
        ),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: About(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Education(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
