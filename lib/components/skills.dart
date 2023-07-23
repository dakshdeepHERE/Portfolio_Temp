import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            'My Skills',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.90
              : (context.screenWidth * 0.8 / 3),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(22.0)),
          padding: const EdgeInsets.all(28.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Programming Languages',
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Dart'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Java'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Kotlin'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Python'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.90
              : (context.screenWidth * 0.8 / 3),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(22.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Frameworks',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Flutter'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Django'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Flask'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('TensorFlow'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.90
              : (context.screenWidth * 0.8 / 3),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(22.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Other Tools',
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  Chip(
                    label: Text('Firebase'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Appwrite'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Azure'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                  Chip(
                    label: Text('Git'),
                    labelStyle: TextStyle(color: Colors.indigo),
                    side: BorderSide(color: Colors.indigo),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
