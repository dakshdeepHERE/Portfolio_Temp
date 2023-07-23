import 'package:flutter/material.dart';
import 'package:portfolioo/components/about.dart';
import 'package:portfolioo/components/education.dart';
import 'package:portfolioo/components/footer_file.dart';
import 'package:portfolioo/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillkey = GlobalKey();
  final educationkey = GlobalKey();
  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(educationkey.currentContext!);
            },
            child: const Text('Experience')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillkey.currentContext!);
            },
            child: const Text('Skills')),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
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
      body: SingleChildScrollView(
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
                    child: Education(
                      key: educationkey,
                    ),
                  ),
                ],
              ),
              Skills(
                key: skillkey,
              ),
              //
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
