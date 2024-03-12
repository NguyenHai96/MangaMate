import 'package:flutter/material.dart';
import 'package:manga_mate/model/choice_button.dart';
import 'package:manga_mate/value/app_styles.dart';

class ChoiceCard extends StatelessWidget {
  final Choice choice;
  const ChoiceCard({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              choice.icon,
              size: 115,
              color: Colors.black,
            ),
            Text(
              choice.name,
              style:
                  TextStyle(fontFamily: AppStyle.h2.fontFamily, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
