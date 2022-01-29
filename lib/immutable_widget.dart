
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'dart:math' as math;

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      foregroundDecoration: BoxDecoration(
          backgroundBlendMode: BlendMode.colorBurn,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xAA0d6123),
                Color(0x00000000),
                Color(0xAA0d6123),
              ] )
      ),

      child: Padding(
        padding: EdgeInsets.all(80),
        child: Transform.rotate(
          angle: 180 / math.pi,
          child: Container(
            width: 230,
            height: 230,
            decoration: BoxDecoration(
                color: Colors.yellow[800],
                boxShadow:  [
                  BoxShadow(
                      blurRadius: 4 ,
                      spreadRadius: 15,
                      color: Colors.black.withAlpha(120),
                      offset: Offset.fromDirection(1.0, 10)

                  )
                ],
                borderRadius: BorderRadius.circular(70)
            ),

            child: Padding(
              padding: EdgeInsets.all(40),
              // Ok now lets change the shape of the small Box and convert it to a shiny ball
              child: _shinyBall(),
            ),
          ),
        ) ,),
    );



  }
  Widget _shinyBall(){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
              colors: [
                Colors.white,
                Colors.purple
              ],
              center: Alignment(-0.3, -.5)
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 20
            )
          ]

      ),
    );
  }
}