import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const AnimatedIconButton(
      {Key? key, required this.iconData, required this.onTap})
      : super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButton> {
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
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          color: isHovering ? Colors.blue.shade100 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
              color: isHovering ? Colors.grey : Colors.grey.shade200),
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0),
              child: FaIcon(
                widget.iconData,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
