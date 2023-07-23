import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolioo/utils/mysocials.dart';
import 'package:portfolioo/utils/ontap_anim.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(22.0)),
      padding: EdgeInsets.all(
        30.0,
      ),
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/mypic.png",
                height: 156.0,
              ),
              Text(
                "Daksh Deep",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "I'm an app developer",
                  textAlign: TextAlign.center,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const Text(
                        "App Developer",
                      ),
                    ),
                    backgroundColor: Colors.amber.shade200,
                    labelStyle:
                        const TextStyle(color: Colors.purple, fontSize: 14.0),
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const Text('UI/UX'),
                    ),
                    backgroundColor: Colors.amber.shade200,
                    padding: const EdgeInsets.all(8.0),
                    labelStyle:
                        const TextStyle(color: Colors.purple, fontSize: 14.0),
                  ),
                ],
              ),
              Divider(),
              AnimatedContact(
                  iconData: FontAwesomeIcons.github,
                  onTap: () {
                    _launchURL('https://github.com/dakshdeepHere');
                  },
                  subtitle: 'dakshdeepHere',
                  title: 'GitHub'),
              AnimatedContact(
                  iconData: FontAwesomeIcons.linkedinIn,
                  onTap: () {},
                  subtitle: 'daksh-deep',
                  title: 'LinkedIn'),
            ],
          ),
          Column(
            children: [
              Socials(),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
