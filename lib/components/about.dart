import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
