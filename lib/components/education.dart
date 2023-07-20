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
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "29 Dec 2022",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: AutofillHints.addressCity),
                          ),
                          Text(
                            "Completed a Milestone",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: AutofillHints.addressCity,
                                fontWeight: FontWeight.w400),
                          )
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
