import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: context.screenWidth < 900
            ? context.screenWidth * 0.9
            : context.screenWidth * 0.5,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius:
              BorderRadius.circular(22), // Adjust the radius as you prefer
        ),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Delete this if you don't want education to be on left aligned
          children: [
            const Text(
              "Experience",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            //
            Timeline.tileBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.connectedFromStyle(
                itemCount: 6,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("20 March 2022"),
                          Text("Completed an Event")
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
