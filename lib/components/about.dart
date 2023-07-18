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
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/coder.png",
            height: 156.0,
          ),
          const Text(
            'Daksh',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          const Text(
            "I'm a app developer and I'm looking to collaborate with fellow developers.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Wrap(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Chip(
                  label: Text("Flutter Developer"),
                  labelStyle: TextStyle(color: Colors.white),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Chip(
                  label: Text("UI/UX"),
                  labelStyle: TextStyle(color: Colors.white),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(8.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
