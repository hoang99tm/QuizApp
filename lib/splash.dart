import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class Splashscreen extends StatefulWidget{
  @override
  _SplashscreenState createState() => _SplashscreenState();
}



class _SplashscreenState extends State<Splashscreen>{
  _SplashscreenState();
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context)=>HomePage(),
      ));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:Center(
        child:Text(
          "Quiz Test",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}