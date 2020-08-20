import 'package:flutter/material.dart';
import 'DetailQuiz.dart';

class Topic extends StatelessWidget {
  List<String> ListTopic = [
    "Level 1",
    "Level 2",
    "Level 3",
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: ListTopic.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Hero(
              tag: ListTopic[index],
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  ListTopic[index],
                ),
              ),
            ),
            title: Text(ListTopic[index],
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            onTap:(){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> DetailQuiz()),
              );
            },
          );
        },
      )
    );
  }
}
