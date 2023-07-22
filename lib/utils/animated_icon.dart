import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIcon extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const AnimatedIcon({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedIcon> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIcon> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
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
          color: isHovering ? Colors.grey.shade400 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
              color: isHovering ? Colors.grey : Colors.grey.shade200),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FaIcon(
                widget.iconData,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
