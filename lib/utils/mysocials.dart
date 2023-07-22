import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioo/utils/animated_icon.dart';

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(iconData: FontAwesomeIcons.twitter, onTap: () {}),
        const SizedBox(
          width: 4.0,
        ),
        AnimatedIconButton(iconData: FontAwesomeIcons.hashnode, onTap: () {}),
        const SizedBox(
          width: 4.0,
        ),
      ],
    );
  }
}
