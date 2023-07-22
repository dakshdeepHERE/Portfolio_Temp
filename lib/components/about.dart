import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.3,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Column(
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
          Text(
            "I'm an app developer",
            textAlign: TextAlign.center,
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: const Text(
                  "App Developer",
                ),
                backgroundColor: Colors.amber.shade200,
                labelStyle: const TextStyle(color: Colors.purple),
                padding: const EdgeInsets.all(8.0),
              ),
              Chip(
                label: const Text('UI/UX'),
                backgroundColor: Colors.amber.shade200,
                padding: const EdgeInsets.all(8.0),
                labelStyle: const TextStyle(color: Colors.purple),
              ),
            ],
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FaIcon(
                    FontAwesomeIcons.github,
                    size: 20.0,
                  ),
                )),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('GitHub'), Text('dakshdeepHERE')],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                )),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('LinkedIn'), Text('daksh-deep')],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
