import 'package:flutter/material.dart';
import 'package:jogajog_files_custom/model/User.dart';
import 'package:jogajog_files_custom/shareing_page.dart';

import 'Choice.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, this.choice, required this.userToShow,required this.index})
      : super(key: key);

  final Choice? choice;
  final User userToShow;
  final int index;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    return Card(

        /// color: Colors.blueAccent,
        color: Colors.white,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// Expanded(child: Icon(choice?.icon, size:50.0, color: textStyle!.color)),

                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: InkWell(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: userToShow.image.toString().contains('http')
                            ? Image.network(userToShow.image)
                            : Image.asset(userToShow.image),
                      ),
                    ),
                    /*onTap: () {
                      SharingPage().state.removeSelectedUser(index);
                    },*/
                  ),
                ),
                const SizedBox(width: 2),

                /*FlatButton(
                onPressed: () => Navigator.pop(context, false), // passing false
                child: Text('No'),
              ),*/

                Text(userToShow.username,
                    style: const TextStyle(color: Colors.blue, fontSize: 7)),
              ]),
        ));
  }
}

void deleteFromUserToShow(User user) {}
