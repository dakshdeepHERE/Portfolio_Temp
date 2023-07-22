import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedContact(
      {Key? key,
      required this.iconData,
      required this.onTap,
      required this.subtitle,
      required this.title})
      : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
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
            ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FaIcon(
                    widget.iconData,
                    size: 20.0,
                  ),
                )),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.subtitle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
