import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../JournalView.dart';
import '../../Model/entry.dart';

class JournalList extends StatelessWidget {
  final List<Entry> list;

  JournalList({this.list});

  @override
  Widget build(BuildContext context) {
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
