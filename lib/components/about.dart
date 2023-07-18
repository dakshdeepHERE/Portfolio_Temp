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
    return ClipRRect(
      borderRadius: BorderRadius.circular(
          32.0), // Adjust the value as per your preference
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth * 0.3,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Image.asset(
                "assets/mypic.png",
                height: 156.0,
              ),
            ),
            const Text(
              'Daksh Deep',
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
              spacing: 8.0,
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
      ),
    );
  }
}
