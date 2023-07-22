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
    return Container(
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.5,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius:
            BorderRadius.circular(22), // Adjust the radius as you prefer
      ),
      padding: EdgeInsets.all(
        30.0,
      ),
      height: 700,
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
                              fontSize: 12.0,
                              color: Colors.blue,
                              fontFamily: AutofillHints.addressCity),
                        ),
                        Text(
                          "Milestone",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontFamily: AutofillHints.addressCity,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Milestone Description",
                          style: TextStyle(
                              fontSize: 14.0,
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
    );
  }
}
