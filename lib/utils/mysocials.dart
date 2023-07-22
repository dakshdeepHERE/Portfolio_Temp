import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
        FaIcon(
          FontAwesomeIcons.dribbble,
          color: Colors.red,
        ),
        FaIcon(
          FontAwesomeIcons.hashnode,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
