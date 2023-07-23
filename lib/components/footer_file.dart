import 'package:flutter/material.dart';
import 'package:portfolioo/utils/mysocials.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext ntext) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Socials(),
          Text('Developed by Daksh Deep'),
        ],
      ),
    );
  }
}
