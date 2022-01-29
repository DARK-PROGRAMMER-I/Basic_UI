// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ignore: prefer_const_constructors
        Text("Hello There", style: GoogleFonts.leckerliOne(fontSize: 35),),
        Text("There should be no problem",
          style: Theme.of(context).textTheme.headline6 ,),


        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Etiam at mauris massa. Suspendisse potenti.Aenean aliquet eu nisl vitae tempus"
        ),

        Divider(),

        RichText(
            text:TextSpan(
                text: "Flutter Text is ",
                style: TextStyle(color: Colors.black),
                // ignore: prefer_const_literals_to_create_immutables
                children: <TextSpan>[
                  TextSpan(
                      text: "really ",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20),
                      children: [
                        TextSpan(
                            text: "Powerfull",
                            style: TextStyle(
                                fontSize: 40,
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.double)
                        )
                      ]
                  )
                ])
        )

      ],
    );
  }
}