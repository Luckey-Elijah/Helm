import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:senior_design/Model/JournalEntry.dart';
import 'package:senior_design/View/JournalView.dart';
import '../../Model/entry.dart';

import '../Helm.dart';

class JournalList extends StatelessWidget {
  List<Entry> list;

  JournalList({this.list});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index].title),
          onTap: () {
            //  print("tap");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JournalView(
                  name: list[index].title,
                  content: list[index].body,
                  date: list[index].dateTime.toString(),
                  index: index,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
