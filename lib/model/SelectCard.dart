import 'package:flutter/material.dart';
import 'package:jogajog_files_custom/model/User.dart';

import 'Choice.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,  this.choice, required this.userToShow}) : super(key: key);

  final Choice? choice;
  final User userToShow;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    return Card(
        color: Colors.blueAccent,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /// Expanded(child: Icon(choice?.icon, size:50.0, color: textStyle!.color)),
              /// Expanded(child: userToShow.),
              Text(userToShow.name, style: textStyle),
            ]
        ),
        )
    );
  }
}
