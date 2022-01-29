import "package:flutter/material.dart";

import 'basic_screen.dart';
import 'immutable_widget.dart';
import 'dart:math' as math;

void main() => runApp(StaticScreen());


class StaticScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicScreen(),
    );
  }
}