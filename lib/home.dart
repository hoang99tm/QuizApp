import 'package:flutter/material.dart';
import 'package:quiztest/cate.dart';

class HomePage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage>{
  List<String> title=[
    'IQ',
    'EQ',
    'Memory',
    'Eye',
  ];

  List<String> images=[
    'images/brainIQ.png',
    'images/brainEQ.png',
    'images/brain.png',
    'images/eyes.png',
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz Test",
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: images[index],
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  images[index],
                ),
              ),
            ),
            title: Text(title[index],
                style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            onTap:(){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Topic()),
              );
            },
          );
          },
      )
      ),
    );
  }
}
