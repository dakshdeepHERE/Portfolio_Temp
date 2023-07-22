// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AnimatedContact({
    Key? key,
    required this.iconData,
    required this.onTap,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  @override
  Widget build(BuildContext context) {
    bool isHovering = false;
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: isHovering ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: isHovering ? Colors.blue : Colors.grey)),
        padding: const EdgeInsets.all(8.0),
        child: const Row(
          children: [
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                      child: FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.blue,
                    size: 25,
                  )),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "daksh-deep",
                ),
              ],
            )
          ],
        ),
        //
      ),
    );
  }
}
