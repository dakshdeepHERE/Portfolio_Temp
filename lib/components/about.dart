import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  Color _defaultGitHubColor = Colors.transparent;
  final Color _hoverGitHubColor = Colors.grey.shade300;

  Color _defaultLinkedInColor = Colors.transparent;
  final Color _hoverLinkedInColor = Colors.blue.shade100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.0),
        child: Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : context.screenWidth * 0.3,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          padding: const EdgeInsets.all(30.0),
          height: 700.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.asset(
                  "assets/mypic.png",
                  height: 156.0,
                ),
              ),
              const Text(
                'Daksh Deep',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                "I'm an app developer and I'm looking to collaborate with fellow developers.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                children: [
                  Chip(
                    label: Text("Flutter Developer"),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14.0),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text("UI/UX"),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14.0),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              const Divider(),
              buildGitHubCard(),
              buildLinkedInCard(),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildGitHubCard() {
    return GestureDetector(
      onTap: () => _launchURL('https://github.com/dakshdeepHERE'),
      child: MouseRegion(
        onEnter: (_) => setState(() => _defaultGitHubColor = _hoverGitHubColor),
        onExit: (_) => setState(() => _defaultGitHubColor = Colors.transparent),
        child: Container(
          color: _defaultGitHubColor,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FaIcon(
                    FontAwesomeIcons.githubAlt,
                    size: 25,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "dakshdeepHERE", // Replace with your GitHub username
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildLinkedInCard() {
    return GestureDetector(
      onTap: () => _launchURL('https://www.linkedin.com/in/daksh-deep'),
      child: MouseRegion(
        onEnter: (_) =>
            setState(() => _defaultLinkedInColor = _hoverLinkedInColor),
        onExit: (_) =>
            setState(() => _defaultLinkedInColor = Colors.transparent),
        child: Container(
          color: _defaultLinkedInColor,
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "daksh-deep", // Replace with your LinkedIn profile name
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    try {
      await Process.run('open', [url]);
    } catch (e) {
      launchFallbackURL();
    }
  }

  void launchFallbackURL() async {
    await Process.run('open', ['https://linktr.ee/DakshDeep']);
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: const About(),
    ),
  ));
}
