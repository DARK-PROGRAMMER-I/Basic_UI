import 'package:ui_practice/immutable_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui_practice/textLayout.dart';

import 'immutable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Following Book"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.edit))
        ],
      ),

      drawer: Drawer(

        child: Container(
            color: Colors.purple,
            child: Center(
              child: Text("Hello Im Drawer", style: TextStyle(color: Colors.white, fontSize: 25),) ,)
        ) ,),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Image.asset('assets/beach.jpg')
              ],
            ) ,
          
          ),
          TextLayout(),
        ],
      ),



    );
  }
}